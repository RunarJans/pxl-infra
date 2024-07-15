locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # To add a new server, copy & paste the following code snippet _within_ the
    # "students" map. Check you formatting, as Terraform will error on this.
    #
    # bryan = { # Name of the server, will create a DNS record `server-of-bryan.pxl.bjth.xyz`
    #   ssh_keys = [ # Example of using multiple public SSH keys, can also just be one
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d", # <- Don't miss the comma
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP"
    #   ]
    #
    yinnis = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOqrPVkvGWeMpVz4a/jyUiKhkOcMi7UjVaRjoTCSTB8A 12302157@student.pxl.be",
      ]
    }
    quinten = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILe8frS9W779nR/TVBTc1giVLt2bwfTYnfqMt7D2qozB 12300247@student.pxl.be"
      ]
    }
    Bjarni = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZu4cb6gCXBrOiOED6vOreITqeXtK7FUIq6mt+Bbwas1PSgq8s5Yrsd544A6slu1tvv2FObsKPcRabD2MXhmDGpSuOYK/zCtC7qotxNWkW8lVZhajbCG+pm8kitkxdzl55BR2Eu4aIMEjc7oOO4j6j1EdQp0BomaDY7weB0Wse/8y7rj+xCvyWnu/ESwnQXhgwFayj15DpB4J5a5YYvNvqTvGABuvbTPofhKXbvu0wgILoPrxDEV2qACxyR2xawLHHz1H3la96WtMzXR2BZCIM4lM1aKUcOH5AKkdViYlncMJ1jJORCLrVwPA/NCn50IU1rmuM/nUeXSYVk43T3VGRqzVN0514Ku3vss1u80OTiB6mBUQBbgvSZwrqqgiSqFWpJyYEtAeUL/2Qr/L48G3lp38lMqD9nQnFFD5+G4bMiQEhOm9SPkp+Cdph+nzXDGb/fxmHPvBI2y/xh+ITzHrkUVPYY1HPrPUkD4N5YEFbg0RfZj3Xo1WF2Ye5mMYwDm8",
      ]
    }
    Bowen = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHZuoIwLhSLkChxOWJZqb+YpLMoE1ql0OHrLCh2fq14O bowen.liang@student.pxl.be",
      ]
    }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
