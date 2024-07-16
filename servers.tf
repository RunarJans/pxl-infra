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
    # Bjarni = {
    #   ssh_keys = [
    #     "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAq0D+rESyOGnAfqEjyWo+Qe4JNJp3rwBOYasEm0h6Tj3Z7yrWtF16bIApuR9l/crShtui0cf9WtzgCmhPmI4HhoIIv5nVo8ERU1E/QdG27JOGSypLusds7PgAyiRLUqufBpi7hD3C5R/xxerllNDvXFC/k62sIkPYeEkkKsUsiXKAvFrA8723O7Z3fNM1/EFZ2hhw+VKhYq0vQ8OVVZQ/VFOb1yeJJxXCzuslfPRx1I67YCTvnwuPSf93yvO+1Q/lPoWZsNf7okOLHZxjmaRAty6eXwHCtk7PiIjCjU++RdJtaQPiNzoI3S17dvAgFnCQYW09unNePfGbJQTvHLCFlKJQA9AE2uL5SEHyAp9ND5SMUK+zJEn59pDRzxX/j3SD6lx3iS1vy25NPQc6XUAuGUMg70lAQlsgAAWrUH3yRnG2CNA9m3OG9xl+SFrR4vkAgZodtspqJEUTo+rXE+0Q31+WNUfUMN69OspKmizLcJtyMNSDjfr056OP/cVIkoU= bjarni heselmans@5CD322B28R",
    #   ]
    # }
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
