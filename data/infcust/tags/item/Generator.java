import java.util.*;
import java.io.*;

public class Generator {
    public static void main(String[] args) throws IOException  {
        ArrayList<String[]> ings = new ArrayList<String[]>();

        BufferedReader breader = new BufferedReader(new FileReader("generator.txt"));
        String s;
        while((s = breader.readLine()) != null)  {
            StringTokenizer st = new StringTokenizer(s);

            ings.add(new String[3]);
            ings.get(ings.size() - 1)[0] = st.nextToken();
            ings.get(ings.size() - 1)[1] = st.nextToken();
            ings.get(ings.size() - 1)[2] = st.nextToken();
        }
        breader.close();

        String[] cust = { "boots", "chestplate", "leggings", "boots", "sword", "pickaxe" };
        String[] types = { "diamond", "emerald", "gold", "netherite" };

        for(String c : cust)  {
            for(String t : types)  {
                FileWriter fw = new FileWriter(c + "_" + t + ".json");
                fw.write("{\r\n");
                fw.write("\t\"values\":[\r\n");
                for(String[] ing : ings)  {
                    if(c.equals(ing[1]) || ((c.equals(cust[0]) || c.equals(cust[1]) || c.equals(cust[2]) || c.equals(cust[3])) && ing[1].equals("armor")))  {
                        if(t.equals(ing[2]) || ((t.equals("diamond") || t.equals("emerald")) && ing[2].equals("overworld")) || ((t.equals("gold") || t.equals("netherite")) && ing[2].equals("nether")) || ing[2].equals("all"))  {
                            fw.write("\t\t\"minecraft:" + ing[0] + "\",\r\n");
                        }
                    }
                }
                fw.write("\t\t\"minecraft:command_block\"\r\n");
                fw.write("\t]\r\n");
                fw.write("}");
                fw.close();
            }
        }
    }
}

/*
{
    "values":[
        "minecraft:rotten_flesh"
    ]
  }
*/