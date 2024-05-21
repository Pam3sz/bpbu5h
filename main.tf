# files modul meghívása
module "files" {
  source     = "./modules/files"
  file_count = 3
  filename   = "example_file"
  content    = "Hello, World!"
}

# read modul meghívása, a files modul outputját használva
module "read" {
  source      = "./modules/read"
  input_paths = module.files.file_paths
}

# write modul meghívása
module "write" {
  source   = "./modules/write"
  answer_1 = var.answer_1
  answer_2 = var.answer_2
  answer_3 = var.answer_3
  answer_4 = var.answer_4
  answer_5 = var.answer_5
  answer_6 = var.answer_6
  answer_7 = var.answer_7
}
