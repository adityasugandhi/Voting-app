{"changed":true,"filter":false,"title":"suffragist.rb","tooltip":"/suffragist.rb","value":"require 'sinatra'\nrequire 'yaml/store'\n\nget '/' do\n   @title = 'Welcome to the Suffragist!'\n   erb :index\nend\nChoices = {\n  'HAM' => 'Hamburger',\n  'PIZ' => 'Pizza',\n  'CUR' => 'Curry',\n  'NOO' => 'Noodles',\n  'BRI' => 'Briyani',\n  }\n\npost '/cast' do\n  @title = 'Thanks for casting your vote!'\n  @vote  = params['vote']\n  \n  @store = YAML::Store.new 'votes.yml'\n  if @vote == 'BRI'\n    @store.transaction do\n      @store['votes'] ||= {}\n      @store['votes'][@vote] ||= 0\n      if @store['votes'][@vote] % 2 ==0\n        @store['votes'][@vote] += -1\n        \n      else\n        @store['votes'][@vote] += 1\n      end\n      counter+=1\n      if counter == 10\n    end\n  end\n  \n  erb :cast\nend\n\nget '/results' do\n  @title = 'Results so far:'\n  @store = YAML::Store.new 'votes.yml'\n  @votes = @store.transaction { @store['votes'] }\n  erb :results\nend","undoManager":{"mark":79,"position":100,"stack":[[{"start":{"row":26,"column":10},"end":{"row":27,"column":8},"action":"insert","lines":["","        "],"id":603,"ignore":true}],[{"start":{"row":27,"column":8},"end":{"row":27,"column":10},"action":"insert","lines":["@s"],"id":604,"ignore":true}],[{"start":{"row":27,"column":10},"end":{"row":27,"column":11},"action":"insert","lines":["t"],"id":605,"ignore":true}],[{"start":{"row":27,"column":11},"end":{"row":27,"column":14},"action":"insert","lines":["ore"],"id":606,"ignore":true}],[{"start":{"row":27,"column":14},"end":{"row":27,"column":16},"action":"insert","lines":["[]"],"id":607,"ignore":true}],[{"start":{"row":27,"column":15},"end":{"row":27,"column":17},"action":"insert","lines":["''"],"id":608,"ignore":true}],[{"start":{"row":27,"column":16},"end":{"row":27,"column":18},"action":"insert","lines":["vo"],"id":609,"ignore":true}],[{"start":{"row":27,"column":18},"end":{"row":27,"column":21},"action":"insert","lines":["tes"],"id":610,"ignore":true}],[{"start":{"row":27,"column":23},"end":{"row":27,"column":25},"action":"insert","lines":["[]"],"id":611,"ignore":true}],[{"start":{"row":27,"column":24},"end":{"row":27,"column":26},"action":"insert","lines":["@v"],"id":612,"ignore":true}],[{"start":{"row":27,"column":26},"end":{"row":27,"column":29},"action":"insert","lines":["ote"],"id":613,"ignore":true}],[{"start":{"row":27,"column":30},"end":{"row":27,"column":32},"action":"insert","lines":[" +"],"id":614,"ignore":true}],[{"start":{"row":27,"column":32},"end":{"row":27,"column":33},"action":"insert","lines":["="],"id":615,"ignore":true}],[{"start":{"row":27,"column":33},"end":{"row":27,"column":34},"action":"insert","lines":[" "],"id":616,"ignore":true}],[{"start":{"row":27,"column":34},"end":{"row":27,"column":35},"action":"insert","lines":["1"],"id":617,"ignore":true}],[{"start":{"row":27,"column":35},"end":{"row":28,"column":8},"action":"insert","lines":["","        "],"id":618,"ignore":true}],[{"start":{"row":28,"column":8},"end":{"row":28,"column":10},"action":"insert","lines":["ed"],"id":619,"ignore":true}],[{"start":{"row":28,"column":6},"end":{"row":28,"column":8},"action":"remove","lines":["  "],"id":620,"ignore":true},{"start":{"row":28,"column":7},"end":{"row":28,"column":8},"action":"remove","lines":["d"]},{"start":{"row":28,"column":7},"end":{"row":28,"column":9},"action":"insert","lines":["nd"]}],[{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":[" "],"id":621,"ignore":true}],[{"start":{"row":24,"column":11},"end":{"row":24,"column":15},"action":"remove","lines":["otes"],"id":622,"ignore":true}],[{"start":{"row":24,"column":10},"end":{"row":24,"column":11},"action":"remove","lines":["v"],"id":623,"ignore":true},{"start":{"row":24,"column":10},"end":{"row":24,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":24,"column":11},"end":{"row":24,"column":15},"action":"insert","lines":["tore"],"id":624,"ignore":true}],[{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":["'"],"id":625,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":10},"action":"insert","lines":["'"],"id":626,"ignore":true}],[{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"remove","lines":["'"],"id":627,"ignore":true}],[{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"insert","lines":["\""],"id":628,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":10},"action":"remove","lines":["'"],"id":629,"ignore":true},{"start":{"row":24,"column":9},"end":{"row":24,"column":10},"action":"insert","lines":["\""]}],[{"start":{"row":24,"column":21},"end":{"row":24,"column":22},"action":"insert","lines":["'"],"id":630,"ignore":true}],[{"start":{"row":24,"column":23},"end":{"row":24,"column":24},"action":"insert","lines":["'"],"id":631,"ignore":true}],[{"start":{"row":24,"column":18},"end":{"row":24,"column":19},"action":"remove","lines":[">"],"id":632,"ignore":true}],[{"start":{"row":24,"column":22},"end":{"row":24,"column":23},"action":"remove","lines":["'"],"id":633,"ignore":true}],[{"start":{"row":24,"column":20},"end":{"row":24,"column":21},"action":"remove","lines":["'"],"id":634,"ignore":true}],[{"start":{"row":24,"column":18},"end":{"row":24,"column":19},"action":"insert","lines":["="],"id":635,"ignore":true}],[{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"remove","lines":["\""],"id":636,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":10},"action":"remove","lines":["\""],"id":637,"ignore":true}],[{"start":{"row":30,"column":4},"end":{"row":31,"column":4},"action":"remove","lines":["  ","    "],"id":638,"ignore":true}],[{"start":{"row":28,"column":9},"end":{"row":30,"column":4},"action":"remove","lines":["","  ","    "],"id":639,"ignore":true}],[{"start":{"row":28,"column":9},"end":{"row":29,"column":4},"action":"insert","lines":["","    "],"id":640,"ignore":true}],[{"start":{"row":24,"column":12},"end":{"row":24,"column":15},"action":"remove","lines":["ore"],"id":641,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":12},"action":"remove","lines":["@st"],"id":642,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":11},"action":"insert","lines":["''"],"id":643,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":11},"action":"remove","lines":["''"],"id":644,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":11},"action":"insert","lines":["@s"],"id":645,"ignore":true}],[{"start":{"row":24,"column":11},"end":{"row":24,"column":13},"action":"insert","lines":["to"],"id":646,"ignore":true}],[{"start":{"row":24,"column":13},"end":{"row":24,"column":15},"action":"insert","lines":["re"],"id":647,"ignore":true}],[{"start":{"row":24,"column":15},"end":{"row":24,"column":17},"action":"insert","lines":["[]"],"id":648,"ignore":true}],[{"start":{"row":24,"column":12},"end":{"row":24,"column":17},"action":"remove","lines":["ore[]"],"id":649,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":12},"action":"remove","lines":["@st"],"id":650,"ignore":true}],[{"start":{"row":24,"column":9},"end":{"row":24,"column":31},"action":"insert","lines":["@store['votes'][@vote]"],"id":651,"ignore":true}],[{"start":{"row":25,"column":36},"end":{"row":26,"column":8},"action":"insert","lines":["","        "],"id":652,"ignore":true}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":10},"action":"insert","lines":["@s"],"id":653,"ignore":true}],[{"start":{"row":26,"column":10},"end":{"row":26,"column":14},"action":"insert","lines":["tore"],"id":654,"ignore":true}],[{"start":{"row":26,"column":14},"end":{"row":26,"column":16},"action":"insert","lines":["[]"],"id":655,"ignore":true}],[{"start":{"row":26,"column":15},"end":{"row":26,"column":18},"action":"insert","lines":["'v'"],"id":656,"ignore":true}],[{"start":{"row":26,"column":17},"end":{"row":26,"column":18},"action":"insert","lines":["o"],"id":657,"ignore":true}],[{"start":{"row":26,"column":18},"end":{"row":26,"column":21},"action":"insert","lines":["tes"],"id":658,"ignore":true}],[{"start":{"row":26,"column":23},"end":{"row":26,"column":25},"action":"insert","lines":["[]"],"id":659,"ignore":true}],[{"start":{"row":26,"column":24},"end":{"row":26,"column":27},"action":"insert","lines":["@vo"],"id":660,"ignore":true}],[{"start":{"row":26,"column":27},"end":{"row":26,"column":29},"action":"insert","lines":["te"],"id":661,"ignore":true}],[{"start":{"row":26,"column":30},"end":{"row":26,"column":32},"action":"insert","lines":[" +"],"id":662,"ignore":true}],[{"start":{"row":26,"column":32},"end":{"row":26,"column":34},"action":"insert","lines":["=1"],"id":663,"ignore":true}],[{"start":{"row":26,"column":33},"end":{"row":26,"column":34},"action":"insert","lines":[" "],"id":664,"ignore":true}],[{"start":{"row":24,"column":32},"end":{"row":24,"column":34},"action":"remove","lines":["=="],"id":665,"ignore":true}],[{"start":{"row":24,"column":32},"end":{"row":24,"column":33},"action":"insert","lines":["%"],"id":666,"ignore":true}],[{"start":{"row":24,"column":35},"end":{"row":24,"column":38},"action":"insert","lines":[" =="],"id":667,"ignore":true}],[{"start":{"row":24,"column":38},"end":{"row":24,"column":39},"action":"insert","lines":["0"],"id":668,"ignore":true}],[{"start":{"row":26,"column":33},"end":{"row":26,"column":35},"action":"remove","lines":[" 1"],"id":669,"ignore":true}],[{"start":{"row":26,"column":11},"end":{"row":26,"column":33},"action":"remove","lines":["ore['votes'][@vote] +="],"id":670,"ignore":true}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":11},"action":"remove","lines":["@st"],"id":671,"ignore":true}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":10},"action":"insert","lines":["@s"],"id":672,"ignore":true}],[{"start":{"row":26,"column":9},"end":{"row":26,"column":10},"action":"remove","lines":["s"],"id":673,"ignore":true}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":9},"action":"remove","lines":["@"],"id":674,"ignore":true}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":11},"action":"insert","lines":["a ="],"id":675,"ignore":true}],[{"start":{"row":26,"column":11},"end":{"row":26,"column":12},"action":"insert","lines":[" "],"id":676,"ignore":true}],[{"start":{"row":26,"column":10},"end":{"row":26,"column":12},"action":"remove","lines":["= "],"id":677,"ignore":true}],[{"start":{"row":31,"column":2},"end":{"row":38,"column":2},"action":"remove","lines":["else","    @store.transaction do","      @store['votes'] ||= {}","      @store['votes'][@vote] ||= 0","      @store['votes'][@vote] += 1","    end","  end","  "],"id":678,"ignore":true}],[{"start":{"row":30,"column":7},"end":{"row":31,"column":4},"action":"insert","lines":["","    "],"id":679,"ignore":true}],[{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"remove","lines":["  "],"id":680,"ignore":true},{"start":{"row":31,"column":2},"end":{"row":31,"column":5},"action":"insert","lines":["end"]}],[{"start":{"row":26,"column":8},"end":{"row":26,"column":10},"action":"remove","lines":["a "],"id":681,"ignore":true}],[{"start":{"row":29,"column":9},"end":{"row":30,"column":6},"action":"insert","lines":["","      "],"id":682,"ignore":true}],[{"start":{"row":30,"column":6},"end":{"row":30,"column":8},"action":"insert","lines":["@s"],"id":683,"ignore":true}],[{"start":{"row":30,"column":8},"end":{"row":30,"column":12},"action":"insert","lines":["tore"],"id":684,"ignore":true}],[{"start":{"row":30,"column":12},"end":{"row":30,"column":14},"action":"insert","lines":["[]"],"id":685,"ignore":true}],[{"start":{"row":30,"column":13},"end":{"row":30,"column":15},"action":"insert","lines":["''"],"id":686,"ignore":true}],[{"start":{"row":30,"column":12},"end":{"row":30,"column":16},"action":"remove","lines":["['']"],"id":687,"ignore":true}],[{"start":{"row":30,"column":6},"end":{"row":30,"column":12},"action":"remove","lines":["@store"],"id":688,"ignore":true},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["c"]}],[{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["o"],"id":689,"ignore":true}],[{"start":{"row":30,"column":8},"end":{"row":30,"column":13},"action":"insert","lines":["unter"],"id":690,"ignore":true}],[{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"insert","lines":["="],"id":691,"ignore":true}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["+"],"id":692,"ignore":true}],[{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"insert","lines":["\\"],"id":693,"ignore":true}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":16},"action":"remove","lines":["+\\"],"id":694,"ignore":true}],[{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"remove","lines":["="],"id":695,"ignore":true},{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"insert","lines":["+"]}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":16},"action":"insert","lines":["=1"],"id":696,"ignore":true}],[{"start":{"row":30,"column":16},"end":{"row":31,"column":6},"action":"insert","lines":["","      "],"id":697,"ignore":true}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":10},"action":"insert","lines":["if c"],"id":698,"ignore":true}],[{"start":{"row":31,"column":10},"end":{"row":31,"column":13},"action":"insert","lines":["oun"],"id":699,"ignore":true}],[{"start":{"row":31,"column":13},"end":{"row":31,"column":16},"action":"insert","lines":["ter"],"id":700,"ignore":true}],[{"start":{"row":31,"column":16},"end":{"row":31,"column":19},"action":"insert","lines":[" =="],"id":701,"ignore":true}],[{"start":{"row":31,"column":19},"end":{"row":31,"column":20},"action":"insert","lines":[" "],"id":702,"ignore":true}],[{"start":{"row":31,"column":20},"end":{"row":31,"column":22},"action":"insert","lines":["10"],"id":703,"ignore":true}]]},"ace":{"folds":[],"scrolltop":54.3125,"scrollleft":0,"selection":{"start":{"row":12,"column":20},"end":{"row":12,"column":20},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":2,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1583499931583}