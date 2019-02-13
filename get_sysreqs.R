
pack_dir <- "tmp"

l = list()

for (pack in dir(".")) {
    full_path = file.path(".", pack, "DESCRIPTION")
    print(pack)
    l[pack] =  suppressWarnings(description$new(full_path)$get("SystemRequirements"))
}
