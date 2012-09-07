// 
// Aarg, this be a class t' be translatin' th' words o' a landlubber into 
// th' words o' a buccaneer.
//

public class TalkLikeYeSeaDog{

    // This be a map o' words we shipmates use in place 
    // o' th' Queen's English
    private static Map<String,String> wordsNStuffs = new Map<String,String> 
                   {'want' => 'wants', 'with' => 'wit\'', 'coffee' => 'grog',
                    'Hey' => 'Ahoy', 'the' => 'th\'', 'lunch' => 'grub', 'of' => 'o\'',
                    'there' => 'thar', 'for' => 'fer', 'Yes' => 'Ay', 'and' => 'an\'',
                    'you' => 'ye', 'no' => 'nay', 'No' => 'nay', 'over' => 'o\'er',
                    'where' => '\'ere', 'your' => 'yer'
                    
                   };          

    // This be 'ere ye enter speakin' like a gentleman 
    // an' leave speakin' like a scalawag. 
    public static String whatSayYe(String landlubber){
        
        // Ay, for all sea dogs t'were once landlubbers
        String seaDog = landlubber;
        
        // Your fancy markings pay nay heed here.
        landlubber = landlubber.replaceAll('[,.!?]', '');
        
        // Check yer map an' venture fore.
        Set<String> yeOldWordSet = new Set<String>();
        yeOldWordSet.addAll(landlubber.split(' '));
        for (String yeWord : yeOldWordSet){
            if (wordsNStuffs.keySet().contains(yeWord)){
                seaDog = seaDog.replaceAll(yeWord, wordsNStuffs.get(yeWord));
            }
        }
        
        // Where we go, thar be nay need fer G.
        seaDog = seaDog.replaceAll('ing ', 'in\' ');
        
        // Ay, and keep yer to fer two now.
        seaDog = seaDog.replaceAll('to ', 't\' ');
    
        // and ye will be landlubber n' mores
        return seaDog;
    }
    
}