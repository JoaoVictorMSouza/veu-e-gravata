package model;

public class Cadastro {

   private String name;
   private String email;
   private String cpf; // Alterado para String
   private String senha;

   // Getters e Setters
   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getCpf() {
      return cpf;
   }

   public void setCpf(String cpf) {
      this.cpf = cpf;
   }

   public String getSenha() {
      return senha;
   }

   public void setSenha(String senha) {
      this.senha = senha;
   }
}
