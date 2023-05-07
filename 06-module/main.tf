module "sample" {
  source = "./module"
  input= module.dummy.dummpy_output
}

module "dummy" {
  source = "./dummy"
}