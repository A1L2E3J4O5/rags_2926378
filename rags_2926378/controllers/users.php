<?php 
    require_once "models/User.php";
    class Users {
        public function create_user(){
            
            // Crear un objeto 01 con los métodos set
            $user1 = new User;
            $user1->setUserId(1);
            $user1->setUserName("María");            
            $user1->setUserAddress("Av. Siempre Viva");            
            $user1->setUserCategory("B");
            $user1->setUserPhone("3153153151");            
            $user1->setUserPass("12345");            
            $user1->setUserStatus(0);            
            echo "Código: " . $user1->getUserId() . "<br>";            
            echo "Nombre: " . $user1->getUserName() . "<br>";
            echo "Dirección: " . $user1->getUserAddress() . "<br>";
            echo "Categoría: " . $user1->getUserCategory() . "<br>";
            echo "Teléfono: " . $user1->getUserPhone() . "<br>";
            echo "Contraseña: " . $user1->getUserPass() . "<br>";
            echo "Estado: " . $user1->getUserStatus() . "<br>";
            echo "<br>";
            
            // Crear un objeto 02 con el constructor de 7 parámetros
            $user2 = new User(
                2,
                'José',
                'Los Comuneros con 30',
                'A',
                '3113113112',
                '45678',
                1
            );
            echo "Código: " . $user2->getUserId() . "<br>";
            echo "Nombre: " . $user2->getUserName() . "<br>";
            echo "Dirección: " . $user2->getUserAddress() . "<br>";
            echo "Categoría: " . $user2->getUserCategory() . "<br>";
            echo "Teléfono: " . $user2->getUserPhone() . "<br>";
            echo "Contraseña: " . $user2->getUserPass() . "<br>";
            echo "Estado: " . $user2->getUserStatus() . "<br>";
            echo "<br>";
            
            // Crear un objeto 03 con el constructor de 2 parámetros
            $user3 = new User(1000256987, "12345");
            $user3->setUserPhone("3183183182");
            echo "Código: " . $user3->getUserId() . "<br>";
            echo "Contraseña: " . $user3->getUserPass() . "<br>";
            echo "Teléfono: " . $user3->getUserPhone() . "<br>";
            
        }        
    }
?>