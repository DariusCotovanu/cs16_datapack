function convertOldToNewModel(oldFormat) {
    const fallbackModel = oldFormat.textures.layer0; // Default fallback model
    const overrides = oldFormat.overrides;
  
    // Convert old format overrides to new entries
    const entries = overrides.map((override) => {
      const threshold = override.predicate.custom_model_data;
      const model = override.model;
  
      return {
        threshold: threshold,
        model: {
          type: "model",
          model: model,
        },
      };
    });
  
    // Build the new format object
    const newFormat = {
      model: {
        type: "range_dispatch",
        property: "custom_model_data",
        index: 0, // Adjust if you have multiple indices
        entries: entries,
        fallback: {
          type: "model",
          model: fallbackModel,
        },
      },
    };
  
    return newFormat;
  }
  
  // Example usage
  const oldFormat = {
    "parent": "minecraft:item/generated",
    "textures": {
      "layer0": "minecraft:item/music_disc_5"
    },
    "overrides": [
      { "model": "cs16:guns/glock18", "predicate": { "custom_model_data": 10020 } },
      { "model": "cs16:guns/glock18_fired", "predicate": { "custom_model_data": 10021 } },
      { "model": "cs16:guns/deagle", "predicate": { "custom_model_data": 10030 } },
      { "model": "cs16:guns/deagle_fired", "predicate": { "custom_model_data": 10031 } },
      { "model": "cs16:guns/deagle_empty", "predicate": { "custom_model_data": 10032 } },
      { "model": "cs16:guns/grenade", "predicate": { "custom_model_data": 10100 } },
      { "model": "cs16:guns/bazooka", "predicate": { "custom_model_data": 10110 } },
      { "model": "cs16:guns/boomstick", "predicate": { "custom_model_data": 10120 } },
      { "model": "cs16:guns/ak47", "predicate": { "custom_model_data": 10200 } },
      { "model": "cs16:guns/ak47_fired", "predicate": { "custom_model_data": 10201 } },
      { "model": "cs16:guns/ak47_reload0", "predicate": { "custom_model_data": 10202 } },
      { "model": "cs16:guns/ak47_reload1", "predicate": { "custom_model_data": 10203 } },
      { "model": "cs16:guns/ak47_reload2", "predicate": { "custom_model_data": 10204 } },
      { "model": "cs16:guns/ak47_reload3", "predicate": { "custom_model_data": 10205 } },
      { "model": "cs16:guns/ak47_reload4", "predicate": { "custom_model_data": 10206 } },
      { "model": "cs16:guns/ak47_reload5", "predicate": { "custom_model_data": 10207 } },
      { "model": "cs16:guns/ak47_reload6", "predicate": { "custom_model_data": 10208 } },
      { "model": "cs16:guns/m4a1", "predicate": { "custom_model_data": 10210 } },
      { "model": "cs16:guns/m4a1_fired", "predicate": { "custom_model_data": 10211 } },
      { "model": "cs16:guns/mp5", "predicate": { "custom_model_data": 10230 } },
      { "model": "cs16:guns/mp5_fired", "predicate": { "custom_model_data": 10231 } },
      { "model": "cs16:guns/m249", "predicate": { "custom_model_data": 10240 } },
      { "model": "cs16:guns/m249_fire0", "predicate": { "custom_model_data": 10241 } },
      { "model": "cs16:guns/famas", "predicate": { "custom_model_data": 10260 } },
      
  
      { "model": "cs16:guns/ak47_purple", "predicate": { "custom_model_data": 20200 } },
      { "model": "cs16:guns/ak47_fired_purple", "predicate": { "custom_model_data": 20201 } }
    ]
  };
  
  const newFormat = convertOldToNewModel(oldFormat);
  console.log(JSON.stringify(newFormat, null, 2));
  