module "sample" {
  source = "./module"
  input = module.dummy.dummy_output
}

module "dummy" {
  source = "./dummy"
}