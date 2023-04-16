import splitfolders

splitfolders.ratio("/Users/shreyasm/Downloads/flowers", # The location of dataset
                   output="/Users/shreyasm/Pickhacks2023/Training/", # The output location
                   seed=42, # The number of seed
                   ratio=(.7, .2, .1)) # The ratio of splited dataset
 		 # If your dataset contains more than one file like ".jpg", ".pdf", etc
                 # If you choose to move, turn this into True
