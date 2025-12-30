import java.util.*;
import java.io.*;

class Stat {
    boolean ench;
    String statName;
    int min;
    int max;

    static HashMap<String, String> statsToScore = new HashMap<String,String>();
    static HashMap<String, String> statsToName = new HashMap<String,String>();
    static HashSet<String> percent = new HashSet<String>();
    static HashSet<String> tenth = new HashSet<String>();
    static HashSet<String> integers = new HashSet<String>();

    public Stat()  {
        ench = false;
        statName = "";
        min = 0;
        max = 0;
    }

    public static void createMap() {
        statsToScore.put("max_health", "inf-hp");
        tenth.add("max_health");
        statsToName.put("max_health", "Max Health");

        statsToScore.put("armor", "inf-armor");
        tenth.add("armor");
        statsToName.put("armor", "Armor");

        statsToScore.put("attack_damage", "inf-atk");
        tenth.add("attack_damage");
        statsToName.put("attack_damage", "Attack Damage");

        statsToScore.put("movement_speed", "inf-speed");
        percent.add("movement_speed");
        statsToName.put("movement_speed", "Movement Speed");

        statsToScore.put("armor_toughness", "inf-toughness");
        tenth.add("armor_toughness");
        statsToName.put("armor_toughness", "Armor Toughness");

        statsToScore.put("knockback_resistance", "inf-kbres");
        tenth.add("knockback_resistance");
        statsToName.put("knockback_resistance", "Knockback Resistance");

        statsToScore.put("attack_speed", "inf-atkspd");
        tenth.add("attack_speed");
        statsToName.put("attack_speed", "Attack Speed");

        statsToScore.put("jump_strength", "inf-jump");
        percent.add("jump_strength");
        statsToName.put("jump_strength", "Jump Strength");

        statsToScore.put("safe_fall_distance", "inf-falldist");
        tenth.add("safe_fall_distance");
        statsToName.put("safe_fall_distance", "Safe Fall Distance");

        statsToScore.put("entity_interaction_range", "inf-entityrange");
        percent.add("entity_interaction_range");
        statsToName.put("entity_interaction_range", "Entity Interaction Range");

        statsToScore.put("block_interaction_range", "inf-blockrange");
        percent.add("block_interaction_range");
        statsToName.put("block_interaction_range", "Block Interaction Range");

        statsToScore.put("scale", "inf-scale");
        percent.add("scale");
        statsToName.put("scale", "Smaller Size");

        statsToScore.put("submerged_mining_speed", "inf-submergedminingspeed");
        percent.add("submerged_mining_speed");
        statsToName.put("submerged_mining_speed", "Submerged Mining Speed");

        statsToScore.put("step_height", "inf-stepheight");
        tenth.add("step_height");
        statsToName.put("step_height", "Step Height");

        statsToScore.put("mining_efficiency", "inf-miningefficiency");
        tenth.add("mining_efficiency");
        statsToName.put("mining_efficiency", "Mining Efficiency");

        statsToScore.put("scale", "inf-scale");
        percent.add("scale");
        statsToName.put("scale", "Smaller Size");

        statsToScore.put("protection", "inf-prot");
        integers.add("protection");
        statsToName.put("protection" , "Protection");

        statsToScore.put("projectile_protection", "inf-projprot");
        integers.add("projectile_protection");
        statsToName.put("projectile_protection", "Projectile Protection");

        statsToScore.put("blast_protection", "inf-blastprot");
        integers.add("blast_protection");
        statsToName.put("blast_protection", "Blast Protection");

        statsToScore.put("fire_protection", "inf-fireprot");
        integers.add("fire_protection");
        statsToName.put("fire_protection", "Fire Protection");

        statsToScore.put("sharpness", "inf-sharpness");
        integers.add("sharpness");
        statsToName.put("sharpness", "Sharpness");

        statsToScore.put("unbreaking", "inf-unbreaking");
        integers.add("unbreaking");
        statsToName.put("unbreaking", "Unbreaking");

        statsToScore.put("mending", "inf-mending");
        integers.add("mending");
        statsToName.put("mending", "Mending");

        statsToScore.put("efficiency", "inf-efficiency");
        integers.add("efficiency");
        statsToName.put("efficiency", "Efficiency");

        statsToScore.put("thorns", "inf-thorns");
        integers.add("thorns");
        statsToName.put("thorns", "Thorns");

        statsToScore.put("respiration", "inf-respiration");
        integers.add("respiration");
        statsToName.put("respiration", "Respiration");

        statsToScore.put("feather_falling", "inf-featherfalling");
        integers.add("feather_falling");
        statsToName.put("feather_falling", "Feather Falling");

        statsToScore.put("sweeping_edge", "inf-sweepingedge");
        integers.add("sweeping_edge");
        statsToName.put("sweeping_edge", "Sweeping Edge");

        statsToScore.put("looting", "inf-looting");
        integers.add("looting");
        statsToName.put("looting", "Looting");

        statsToScore.put("fire_aspect", "inf-fireaspect");
        integers.add("fire_aspect");
        statsToName.put("fire_aspect", "Fire Aspect");

        statsToScore.put("swift_sneak", "inf-swiftsneak");
        integers.add("swift_sneak");
        statsToName.put("swift_sneak", "Swift Sneak");

        statsToScore.put("depth_strider", "inf-depthstrider");
        integers.add("depth_strider");
        statsToName.put("depth_strider", "Depth Strider");

        statsToScore.put("frost_walker", "inf-frostwalker");
        integers.add("frost_walker");
        statsToName.put("frost_walker", "Frost Walker");

        statsToScore.put("soul_speed", "inf-soulspeed");
        integers.add("soul_speed");
        statsToName.put("soul_speed", "Soul Speed");

        statsToScore.put("aqua_affinity", "inf-aquaaffinity");
        integers.add("aqua_affinity");
        statsToName.put("aqua_affinity", "Aqua Affinity");

        statsToScore.put("knockback", "inf-knockback");
        integers.add("knockback");
        statsToName.put("knockback", "Knockback");

        statsToScore.put("fortune", "inf-fortune");
        integers.add("fortune");
        statsToName.put("fortune", "Fortune");

        statsToScore.put("silk_touch", "inf-silktouch");
        integers.add("silk_touch");
        statsToName.put("silk_touch", "Silk Touch");

        statsToScore.put("freeze_protection", "inf-freezeprot");
        integers.add("freeze_protection");
        statsToName.put("freeze_protection", "Freeze Protection");

        statsToScore.put("experience", "inf-experience");
        integers.add("experience");
        statsToName.put("experience", "Experience");
    }

    public boolean write(FileWriter ing, FileWriter update) throws IOException {
        if(min == max)  {
            if(min > 0)  {
                ing.write("scoreboard players add #temp " + statsToScore.get(statName) + " " + min + "\r\n");
            } else  {
                ing.write("scoreboard players remove #temp " + statsToScore.get(statName) + " " + (-min) + "\r\n");
            }
        } else  {
            ing.write("data modify storage infcust:craft stat set value \"" + statsToScore.get(statName) + "\"\r\n");
            ing.write("data modify storage infcust:craft min set value " + min + "\r\n");
            ing.write("data modify storage infcust:craft max set value " + max + "\r\n");
            ing.write("data modify storage infcust:craft operation set value \"" + (min < 0 ? "add" : "remove") + "\"\r\n");
            ing.write("data modify storage infcust:craft absmin set value " + (min < 0 ? -min : min) + "\r\n");
            ing.write("function infcust:craft/ingredients/macro with storage infcust:craft\r\n");
            ing.write("scoreboard players operation #rollvalue inf-id += #amount inf-id\r\n\r\n");
        }

        String color = ench ? "aqua" : (min < 0 ? "red" : "green");

        if(min != max)  {
            int absMin = min < 0 ? -min : min;
            int absMax = max < 0 ? -max : max;
            if(tenth.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + (absMin / 10) + "." + (absMin % 10) + " to " + (max > 0 ? "+" : "-") + (absMax / 10) + "." + (absMax % 10) + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + (absMin / 10) + "." + (absMin % 10) + " to " + (max > 0 ? "+" : "-") + (absMax / 10) + "." + (absMax % 10) + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            } else if(percent.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " to " + (max > 0 ? "+" : "-") + absMax + "% " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " to " + (max > 0 ? "+" : "-") + absMax + "% " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            } else if(integers.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " to " + (max > 0 ? "+" : "-") + absMax + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " to " + (max > 0 ? "+" : "-") + absMax + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            }
        } else  {
            int absMin = min < 0 ? -min : min;
            if(tenth.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + (absMin / 10) + "." + (absMin % 10) + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + (absMin / 10) + "." + (absMin % 10) + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            } else if(percent.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + "% " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + "% " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            } else if(integers.contains(statName))  {
                update.write("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
                System.out.print("[{\"text\":\"" + (min > 0 ? "+" : "-") + absMin + " " + statsToName.get(statName) + "\",\"italic\":false,\"color\":\"" + color + "\"}],");
            }
        }

        return min == max;
    }
}

public class Addition {
    public static void main(String[] args) throws IOException  {
        Stat.createMap();

        BufferedReader breader = new BufferedReader(new FileReader("input.txt"));

        /* Input Format:
            (item_name) (ITEM NAME) (gear) (gem) (rarity) (cost) (enchantment/attribute) (stat_name) (min) (max) ...
        */

        ArrayList<ArrayList<String>> ings = new ArrayList<ArrayList<String>>();

        String s;
        while((s = breader.readLine()) != null)  {
            StringTokenizer st = new StringTokenizer(s);

            ings.add(new ArrayList<String>());
            while(st.hasMoreTokens())  {
                ings.get(ings.size() - 1).add(st.nextToken());
            }
        }
        breader.close();

        for(int i = 0; i < ings.size(); i++)  {
            ArrayList<String> curr = ings.get(i);
            String itemCode = curr.get(0), itemName = curr.get(1), gear = curr.get(2), gem = curr.get(3), rarity = curr.get(4);;
            int cost = Integer.parseInt(curr.get(5));
            ArrayList<Stat> stats = new ArrayList<Stat>();

            for(int j = 6; j < curr.size(); j++)  {
                if(j % 4 == 2)  {
                    stats.add(new Stat());
                    stats.get(stats.size() - 1).ench = curr.get(j).equals("enchantment");
                } else if(j % 4 == 3)  {
                    stats.get(stats.size() - 1).statName = curr.get(j);
                } else if(j % 4 == 0)  {
                    stats.get(stats.size() - 1).min = Integer.parseInt(curr.get(j));
                } else  {
                    stats.get(stats.size() - 1).max = Integer.parseInt(curr.get(j));
                }
            }

            FileWriter fw = new FileWriter("./result/ingredients/" + itemCode + ".mcfunction");
            fw.write("scoreboard players set #rollvalue inf-id 0\r\n\r\n");

            FileWriter update = new FileWriter("./result/update/" + itemCode + ".mcfunction");
            update.write("data modify entity @s Item.components.\"minecraft:lore\" set value [[{\"text\": \"" + rarity + " " + gem + " " + gear + " Ingredient\", \"italic\":false,\"color\":\"" + (rarity.equals("Common") ? "gray" : (rarity.equals("Rare") ? "light_purple" : (rarity.equals("Legendary") ? "aqua" : "dark_purple"))) + "\"}],[{\"text\":\"\"}],");

            System.out.println("Crafting recipe for " + itemName.replace("."," "));
            System.out.println("\n\"components\": {");
            System.out.print("\"minecraft:lore\": [[{\"text\": \"" + rarity + " " + gem + " " + gear + " Ingredient\", \"italic\":false,\"color\":\"" + (rarity.equals("Common") ? "gray" : (rarity.equals("Rare") ? "light_purple" : (rarity.equals("Legendary") ? "aqua" : "dark_purple"))) + "\"}],[{\"text\":\"\"}],");

            int count = 0;

            for(int j = 0; j < stats.size(); j++)  {
                Stat stat = stats.get(j);
                if(!stat.write(fw, update))  {
                    ++count;
                }
                fw.write("\r\n");
            }

            if(count == 0)  {
                fw.write("\r\nscoreboard players set #rollvalue inf-id 100\r\n");
            } else if(count > 1)  {
                fw.write("\r\nscoreboard players set #divide inf-id " + count + "\r\n");
                fw.write("scoreboard players operation #rollvalue inf-id /= #divide inf-id\r\n");
            }

            if(cost > 0)  {
                fw.write("\r\nscoreboard players add #temp inf-cost " + cost + "\r\n");
            }

            fw.close();

            update.write("[{\"text\":\"\"}],[{\"text\":\"" + (cost >= 0 ? "+" : "-") + (cost > 0 ? cost : -cost) + " XP Cost\",\"italic\":false,\"color\":\"" + (cost <= 9 ? "dark_green" : (cost <= 19 ? "yellow" : "red")) + "\"}]]\r\n");
            update.write("\r\ndata modify entity @s Item.components.\"minecraft:custom_data\" set value {inf_ing:1b,inf_rarity:" + (rarity.equals("Common") ? 2 : (rarity.equals("Rare") ? 3 : (rarity.equals("Legendary") ? 4 : 5))) + "b,");

            System.out.println("[{\"text\":\"\"}],[{\"text\":\"" + (cost >= 0 ? "+" : "-") + (cost > 0 ? cost : -cost) + " XP Cost\",\"italic\":false,\"color\":\"" + (cost <= 9 ? "dark_green" : (cost <= 19 ? "yellow" : "red")) + "\"}]],");
            System.out.print("\"minecraft:custom_data\": {\"inf_ing\":1,\"inf_rarity\":" + (rarity.equals("Common") ? 2 : (rarity.equals("Rare") ? 3 : (rarity.equals("Legendary") ? 4 : 5))) + ",");

            if(gear.equals("Armor"))  {
                if(gem.equals("Universal"))  {
                    update.write("inf_boots_diamond:1b,inf_boots_emerald:1b,inf_boots_netherite:1b,inf_boots_gold:1b,inf_leggings_diamond:1b,inf_leggings_emerald:1b,inf_leggings_netherite:1b,inf_leggings_gold:1b,inf_chestplate_diamond:1b,inf_chestplate_emerald:1b,inf_chestplate_netherite:1b,inf_chestplate_gold:1b,inf_helmet_diamond:1b,inf_helmet_emerald:1b,inf_helmet_netherite:1b,inf_helmet_gold:1b");
                    System.out.print("\"inf_boots_diamond\":1,\"inf_boots_emerald\":1,\"inf_boots_netherite\":1,\"inf_boots_gold\":1,\"inf_leggings_diamond\":1,\"inf_leggings_emerald\":1,\"inf_leggings_netherite\":1,\"inf_leggings_gold\":1,\"inf_chestplate_diamond\":1,\"inf_chestplate_emerald\":1,\"inf_chestplate_netherite\":1,\"inf_chestplate_gold\":1,\"inf_helmet_diamond\":1,\"inf_helmet_emerald\":1,\"inf_helmet_netherite\":1,\"inf_helmet_gold\":1");
                } else if(gem.equals("Nether"))  {
                    update.write("inf_boots_netherite:1b,inf_boots_gold:1b,inf_leggings_netherite:1b,inf_leggings_gold:1b,inf_chestplate_netherite:1b,inf_chestplate_gold:1b,inf_helmet_netherite:1b,inf_helmet_gold:1b");
                    System.out.print("\"inf_boots_netherite\":1,\"inf_boots_gold\":1,\"inf_leggings_netherite\":1,\"inf_leggings_gold\":1,\"inf_chestplate_netherite\":1,\"inf_chestplate_gold\":1,\"inf_helmet_netherite\":1,\"inf_helmet_gold\":1");
                } else if(gem.equals("Overworld"))  {
                    update.write("inf_boots_diamond:1b,inf_boots_emerald:1b,inf_leggings_diamond:1b,inf_leggings_emerald:1b,inf_chestplate_diamond:1b,inf_chestplate_emerald:1b,inf_helmet_diamond:1b,inf_helmet_emerald:1b");
                    System.out.print("\"inf_boots_diamond\":1,\"inf_boots_emerald\":1,\"inf_leggings_diamond\":1,\"inf_leggings_emerald\":1,\"inf_chestplate_diamond\":1,\"inf_chestplate_emerald\":1,\"inf_helmet_diamond\":1,\"inf_helmet_emerald\":1");
                } else  {
                    update.write("inf_boots_" + gem.toLowerCase() + ":1b,");
                    update.write("inf_leggings_" + gem.toLowerCase() + ":1b,");
                    update.write("inf_chestplate_" + gem.toLowerCase() + ":1b,");
                    update.write("inf_helmet_" + gem.toLowerCase() + ":1b");
                    System.out.print("\"inf_boots_" + gem.toLowerCase() + "\":1,");
                    System.out.print("\"inf_leggings_" + gem.toLowerCase() + "\":1,");
                    System.out.print("\"inf_chestplate_" + gem.toLowerCase() + "\":1,");
                    System.out.print("\"inf_helmet_" + gem.toLowerCase() + "\":1");
                }
            } else  {
                if(gem.equals("Universal"))  {
                    update.write("inf_" + gear.toLowerCase() + "_diamond:1b,");
                    update.write("inf_" + gear.toLowerCase() + "_emerald:1b,");
                    update.write("inf_" + gear.toLowerCase() + "_netherite:1b,");
                    update.write("inf_" + gear.toLowerCase() + "_gold:1b");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_diamond\":1,");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_emerald\":1,");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_netherite\":1,");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_gold\":1");
                } else if(gem.equals("Overworld"))  {
                    update.write("inf_" + gear.toLowerCase() + "_diamond:1b,");
                    update.write("inf_" + gear.toLowerCase() + "_emerald:1b");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_diamond\":1,");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_emerald\":1");
                } else if(gem.equals("Nether"))  {
                    update.write("inf_" + gear.toLowerCase() + "_netherite:1b,");
                    update.write("inf_" + gear.toLowerCase() + "_gold:1b");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_netherite\":1,");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_gold\":1");
                } else  {
                    update.write("inf_" + gear.toLowerCase() + "_" + gem.toLowerCase() + ":1b");
                    System.out.print("\"inf_" + gear.toLowerCase() + "_" + gem.toLowerCase() + "\":1");
                }
            }

            update.write("}\r\n\r\n");

            System.out.println(",\"name\":\"" + itemName.replace("."," ") + "\"}");
            System.out.println("},\n\n\n");

            update.write("data modify entity @s Item.components.\"minecraft:custom_data\".name set value \"" + itemName.replace(".", " ") +"\"\r\n");

            update.close();
        }

        String[] possibleGears = {"Helmet", "Chestplate", "Leggings", "Boots", "Sword", "Pickaxe", "Armor"};
        String[] possibleGems = {"Diamond", "Emerald", "Netherite", "Gold"};

        for(String gear : possibleGears)  {
            for(String gem : possibleGems)  {
                FileWriter next = new FileWriter("./result/" + gear.toLowerCase() + "_" + gem.toLowerCase() + "_ingredient.mcfunction");

                for(ArrayList<String> ing : ings)  {
                    if(gem.equals("Diamond") || gem.equals("Emerald"))  {
                        if(ing.get(2).equals(gear) && (ing.get(3).equals(gem) || ing.get(3).equals("Overworld")))  {
                            next.write("execute if items entity @s container.0 " + ing.get(0) + " run function infcust:craft/ingredients/" + ing.get(0) + "\r\n");
                        }
                    } else  {
                        if(ing.get(2).equals(gear) && (ing.get(3).equals(gem) || ing.get(3).equals("Nether")))  {
                            next.write("execute if items entity @s container.0 " + ing.get(0) + " run function infcust:craft/ingredients/" + ing.get(0) + "\r\n");
                        }
                    }
                }

                next.close();
            }

            FileWriter next = new FileWriter("./result/" + gear.toLowerCase() + "_ingredient.mcfunction");

            for(ArrayList<String> ing : ings)  {
                if(ing.get(2).equals(gear) && ing.get(3).equals("Universal"))  {
                    next.write("execute if items entity @s container.0 " + ing.get(0) + " run function infcust:craft/ingredients/" + ing.get(0) + "\r\n");
                }
            }

            next.close();
        }

        System.out.println();

        for(ArrayList<String> ing : ings)  {
            System.out.println("execute if items entity @s container.0 " + ing.get(0) + "[!custom_data] run return run function infcust:item_update/" + ing.get(0));
        }
    }
}
