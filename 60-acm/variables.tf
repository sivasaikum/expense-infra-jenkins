variable "project" {
    default = "expense"

}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "domain_name" {
    default = "jobsearchindia.online"
}

variable "hostedzone_id" {
    default = "Z07583031PEET0FZTRC5C"
}