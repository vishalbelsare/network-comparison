## ------------------------------------------------------------------------
# Load libraries
library("netdist")
library("purrr")

## ------------------------------------------------------------------------
# Maximum graphlet size to calculate counts and netdis statistic for.
max_graphlet_size <- 4

# Ego network neighbourhood size
neighbourhood_size <- 2

# Minimum size of ego networks to consider
min_ego_nodes <- 3
min_ego_edges <- 1

# Ego network density binning parameters
min_bin_count <- 5
num_bins <- 100

# Reference graph
ref_path <- system.file(file.path("extdata", "random", "ER_1250_10_1"), 
                        package = "netdist")
ref_graph <- read_simple_graph(ref_path, format = "ncol")


## ------------------------------------------------------------------------
# Load query graphs
source_dir <- system.file(file.path("extdata", "VRPINS"), package = "netdist")

graph_1 <- read_simple_graph(file.path(source_dir, "EBV.txt"),
                             format = "ncol")

graph_2 <- read_simple_graph(file.path(source_dir, "ECL.txt"),
                             format = "ncol")

# Calculate netdis statistics
netdis_one_to_one(graph_1, graph_2,
                  ref_graph,
                  max_graphlet_size = max_graphlet_size,
                  neighbourhood_size = neighbourhood_size,
                  min_ego_nodes = min_ego_nodes,
                  min_ego_edges = min_ego_edges)

## ------------------------------------------------------------------------
# Load query graphs
graphs <- read_simple_graphs(source_dir, format = "ncol", pattern = "*")
graph_1 <- graphs$EBV
graphs_compare <- graphs[c("ECL", "HSV-1", "KSHV", "VZV")]

# Calculate netdis statistics
netdis_one_to_many(graph_1, graphs_compare,
                   ref_graph,
                   max_graphlet_size = max_graphlet_size,
                   neighbourhood_size = neighbourhood_size,
                   min_ego_nodes = min_ego_nodes,
                   min_ego_edges = min_ego_edges)

## ------------------------------------------------------------------------
# Load query graphs
source_dir <- system.file(file.path("extdata", "VRPINS"), package = "netdist")
graphs <- read_simple_graphs(source_dir, format = "ncol", pattern = "*")

# Calculate netdis statistics
results <- netdis_many_to_many(graphs,
                               ref_graph,
                               max_graphlet_size = max_graphlet_size,
                               neighbourhood_size = neighbourhood_size,
                               min_ego_nodes = min_ego_nodes,
                               min_ego_edges = min_ego_edges)

print(results$netdis)
print(results$comp_spec)

