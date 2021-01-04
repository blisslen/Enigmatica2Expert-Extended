import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

#priority 52

# ######################################################################
#
# Helpers
#
# ######################################################################

# Shortcut for itemUtils.getItem (IItemStack only)
function I(id as string, n as int) as IItemStack { return itemUtils.getItem(id, n); }


# Check if exception string contains lookup string, case NOT sensetive
function isNotException(exceptions as string, machineName as string) as bool  {
  if (isNull(exceptions)) {
    return true;
  } else {
    val exc = exceptions.toLowerCase();
    val name = machineName.toLowerCase();

    val isHaveWord    = exc.matches(".*\b" ~ name ~ "\b.*");
    val isAfterStrict = exc.matches(".*strict:.*" ~ name ~ "\b.*");
    val isOnly        = exc.matches("^only:.*");

    return isAfterStrict || !(isHaveWord ^ isOnly);
  }
}

# Check machineName comes after keyword "strict:"
function isStrict(exceptions as string, machineName as string) as bool  {
  if (isNull(exceptions)) {
    return false;
  } else {
    return exceptions.toLowerCase().matches(".*strict:.*" ~ machineName.toLowerCase() ~ "\b.*");
  }
}

# Safe get for item array
function arrN_item(arr as IItemStack[], n as int) as IItemStack {
  return !isNull(arr) ? (arr.length > n ? arr[n] : null) : null;
}

# Safe get for IIngredient array
function arrN_ingr(arr as IIngredient[], n as int) as IIngredient {
  return !isNull(arr) ? (arr.length > n ? arr[n] : null) : null;
}

# Safe get for IIngredient array
function arrN_liq(arr as ILiquidStack[], n as int) as ILiquidStack {
  return !isNull(arr) ? (arr.length > n ? arr[n] : null) : null;
}

# Safe get for float array
function arrN_float(arr as float[], n as int) as float {
  return !isNull(arr) ? (arr.length > n ? arr[n] : 0) : 0;
}

# Get 0 element of Item Array. If null - return default
function defaultItem0(items as IItemStack[], default as IItemStack) as IItemStack  {
  val it = arrN_item(items, 0);
  return !isNull(it) ? it : default;
}

# Get Nth element of float Array. If null or zero - return default
function defaultChanceN(extraChance as float[], n as int, default as float) as float  {
  val v = arrN_float(extraChance, n);
  return v != 0 ? v : default;
}

# Get 0 element of float Array. If null or zero - return default
function defaultChance0(extraChance as float[], default as float) as float  {
  return defaultChanceN(extraChance, 0, default);
}

# Get 0 element of float Array. If null or zero - return default. Return x100 as int
function defaultChance0_int(extraChance as float[], default as int) as int  {
  return (defaultChance0(extraChance, default as float / 100.0f) * 100.0d) as int;
}

# Get input/output amount if we have non-whole output amount
function wholesCalc(outputAmount as double) as int[string] {
  val whole = outputAmount as int as double;
  val residue = outputAmount - whole;
  if(residue == 0) return {"ins": 1, "outs": outputAmount as int};
  val ins = 1.0d / residue;
  val outs = outputAmount * ins;
  return {"ins": ins as int, "outs": outs as int};
}

# ######################################################################
#
# Logging functions
#
# ######################################################################

function warning(machineNameAnyCase as string, inputStr as string, description as string) as string {
  logger.logWarning("process.work: [" ~ machineNameAnyCase ~ "] " ~ description ~ "  INPUT: " ~ inputStr);
  return "";
}

function info(machineNameAnyCase as string, inputStr as string, description as string) as string {
  utils.log("process.work: [" ~ machineNameAnyCase ~ "] " ~ description ~ "  INPUT: " ~ inputStr);
  return "";
}


# ######################################################################
#
# Manual recipes
#
# ######################################################################

function xmlRecipe(filename as string, recipeContent as string) {
  utils.log('Put this recipe in file [' ~ filename ~ '] manually.\n' ~ recipeContent);
}

function avdRockXmlRecipe(filename as string, 
  inputItems as IIngredient[], inputLiquids as ILiquidStack[],
  outputItems as IItemStack[], outputLiquids as ILiquidStack[]) {
  
  var s = '';

  # Dumpt all names for inputs and outputs
  var in_name  as string = null;
  var out_name as string = null;

  # Inputs
  if(!isNull(inputItems)) { for ii in inputItems { if(ii.items.length > 0) {
      var display as string = null;
      var id as string = null;
      var meta as int = 0;
      var type as string = null;
      val oreRegex = "<ore:(.*)>( \\* \\d+)?";
      if(ii.commandString.matches(oreRegex)) {
        type = 'oreDict';
        id = ii.commandString.replaceAll(oreRegex, "$1");
        display = id;
      } else {
        type = 'itemStack';
        val in_it = ii.items[0];
        display = in_it.displayName;
        id = in_it.definition.id;
        meta = in_it.damage;
      }
      in_name = (isNull(in_name) ? display : (in_name ~ "+"));
      s = s ~ '    <'+type+'>' ~ id ~" "~ ii.amount ~ ((meta != 0) ? " "~meta : '') ~ '</'+type+'>\n';
  }}}
  if(!isNull(inputLiquids)) { for ii in inputLiquids {
      in_name = (isNull(in_name) ? ii.displayName : (in_name ~ "+"));
      s = s ~ '    <fluidStack>' ~ ii.name ~ " " ~ ii.amount ~'</fluidStack>\n';
  }}

  # Outputs
  s = s ~ '    </input><output>\n';
  if(!isNull(outputItems)) { for ii in outputItems { if(ii.items.length > 0) {
      val out_it = ii.items[0];
      out_name = (isNull(out_name) ? out_it.displayName : (out_name ~ "+"));
      s = s ~ '    <itemStack>' ~ out_it.definition.id ~ " " ~ ii.amount ~ " " ~ out_it.damage ~ '</itemStack>\n';
  }}}
  if(!isNull(outputLiquids)) { for ii in outputLiquids {
      out_name = (isNull(out_name) ? ii.displayName : (out_name ~ "+"));
      s = s ~ '    <fluidStack>' ~ ii.name ~ " " ~ ii.amount ~ '</fluidStack>\n';
  }}
  s = s ~ '    </output></Recipe>';

  # Add prefix (reverse order)
  s = '  <!-- [' ~ out_name ~ '] from [' ~ in_name ~ '] -->\n' ~
      '  <Recipe timeRequired="10" power ="40000"><input>\n' ~ s;

  xmlRecipe("./config/advRocketry/"~filename~".xml", s);
}