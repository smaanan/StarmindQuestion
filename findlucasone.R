# Install the necessary library
library(stringdist)

# Load the dataset
df = read.csv("Downloads/20210103_hundenamen.csv")

# Select the vector of names
a = df$HUNDENAME

b = "Luca"

# Calculate the distance between "Luca" and the names
df$LUCAS_DIST = stringdist(a, b, method='lv')

# Choose all the names with distance to "Lucas"=1
LUCASONE = df$HUNDENAME[df$LUCAS_DIST==1]

# Remove duplicates and see the names
unique(LUCASONE)