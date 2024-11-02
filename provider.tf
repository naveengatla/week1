#AWS region
provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {} 
  subscription_id = "32f6f47c-ee68-43a4-a47c-bf53ba7e1e7e"           
}