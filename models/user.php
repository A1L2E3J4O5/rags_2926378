<?php
    // Nombra la clase
    class User {
        
        // Atributos
        private $dbh;
        private $user_id;
        private $user_name;
        private $user_address;
        private $user_category;
        private $user_phone;
        private $user_pass;
        private $user_status;

        // Sobrecarga de Constructores
        public function __construct(){
            try {
                $this->dbh = DataBase::connection();
                $a = func_get_args();
                $i = func_num_args();
                if (method_exists($this, $f = '__construct' . $i)) {
                    call_user_func_array(array($this, $f), $a);
                }
            } catch (Exception $e) {
                die($e->getMessage());
            }
        }

        # Constructor 0 parámetros
        public function __construct0(){}

        # Constructor 02 parámetros
        public function __construct2($user_id,$user_pass){
            $this->user_id = $user_id;
            $this->user_pass = $user_pass;
        }

        # Constructor 07 parámetros
        public function __construct7($user_id,$user_name,$user_address,$user_category,$user_phone,$user_pass,$user_status){
            $this->user_id = $user_id;            
            $this->user_name = $user_name;            
            $this->user_address = $user_address;
            $this->user_category = $user_category;            
            $this->user_phone = $user_phone;            
            $this->user_pass = $user_pass;            
            $this->user_status = $user_status;            
        }

        // Métodos setter y getter
        
        # Usuario: Id
        public function setUserId($user_id){
            $this->user_id = $user_id;
        }
        public function getUserId(){
            return $this->user_id;
        }
        # Usuario: Nombre         
        public function setUserName($user_name){
            $this->user_name = $user_name;
        }
        public function getUserName(){
            return $this->user_name;
        }
        # Usuario: Direccion         
        public function setUserAddress($user_address){
            $this->user_address = $user_address;
        }
        public function getUserAddress(){
            return $this->user_address;
        }
        # Usuario: Categoria         
        public function setUserCategory($user_category){
            $this->user_category = $user_category;
        }
        public function getUserCategory(){
            return $this->user_category;
        }
        # Usuario: Teléfono         
        public function setUserPhone($user_phone){
            $this->user_phone = $user_phone;
        }
        public function getUserPhone(){
            return $this->user_phone;
        }
        # Usuario: Contraseña        
        public function setUserPass($user_pass){
            $this->user_pass = $user_pass;
        }
        public function getUserPass(){
            return $this->user_pass;
        }
        # Usuario: Estado     
        public function setUserStatus($user_status){
            $this->user_status = $user_status;
        }
        public function getUserStatus(){
            return $this->user_status;
        }

        // Métodos: Persistencia a la base de datos
        
        # Login
        public function login(){}

        # CU09 - Crear Usuario
        public function user_create(){
            try {
                $sql = 'INSERT INTO SOCIOS VALUES (
                        :socio_id,
                        :socio_nombre,
                        :socio_direccion,
                        :socio_categoria,
                        :socio_telefono,
                        :socio_pass,
                        :socio_estado
                    )';
                $stmt = $this->dbh->prepare($sql);
                $stmt->bindValue('socio_id', $this->getUserId());                
                $stmt->bindValue('socio_nombre', $this->getUserName());                
                $stmt->bindValue('socio_direccion', $this->getUserAddress());                
                $stmt->bindValue('socio_categoria', $this->getUserCategory());                
                $stmt->bindValue('socio_telefono', $this->getUserPhone());                
                $stmt->bindValue('socio_pass', $this->getUserPass());                
                $stmt->bindValue('socio_estado', $this->getUserStatus());                
                $stmt->execute();
            } catch (Exception $e) {
                die($e->getMessage());
            }
        }

    }

?>