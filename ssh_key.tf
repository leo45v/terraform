resource "digitalocean_ssh_key" "leokey" {
  name       = "leokey"
  public_key = file("test.pub")
}