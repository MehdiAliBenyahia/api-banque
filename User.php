<?php

require "General.php";

class User extends General {

    protected $table = "user";

    /**
     * Save user
     *
     * @param array $param
     * @return void
     */
    public function save($param){
       $statement = "INSERT INTO user (nom, prenom, mail, password, role, secret_api_key)
                    VALUES (:nom, :prenom :mail, :password, :role, :secret_api_key)";

      $param["nom"]= htmlspecialchars($param["nom"]);
      $param["prenom"]= htmlspecialchars($param["prenom"]);
       $param["mail"]= htmlspecialchars($param["mail"]);
       $param["password"]= password_hash($param["password"], PASSWORD_DEFAULT);
          $param["role"]= json_encode(["ROLE_USER"]);
          $param["secret_api_key"]= md5(uniqid());

        $this->db->prepare($statement, 'save', $param);
    }

    public function connexion ($param){
        $statement = "SELECT * FROM user WHERE nom='".$param["nom"]."'";
        $user = $this->db->queryReturn($statement, true);
        if (password_verify($param["password"], $user->password)) {
            $this->app->sendData("connexion réussie", true, $user->secret_api_key);
        }

    }



}