class Persona:
    def __init__(self,nombre, apellido,direccion, telefono, edad, email):
        self.nombre=nombre
        self.apellido=apellido
        self.direccion=direccion
        self.telefono=telefono
        self.edad=edad
        self.email=email

    def pedir_datos(self):
        self.nombre=input("DIGITE SU NOMBRE: ")
        self.apellido=input("DIGITE SUS APELLIDOS: ")
        self.direccion=input("DIGITE SU DIRECCION: ")
        self.telefono=int(input("DIGITE SU NUMERO DE TELEFONO: "))
        self.edad=int(input("DIGITE SU EDAD: "))
        self.email=input("DIGITE SU EMAIL: ")

    def mostrar_datos(self):
        print("NOMBRE: ",self.nombre)    
        print("APELLIDO: ",self.apellido) 
        print("DIRECCIÓN: ",self.direccion) 
        print("TELEFONO: ",self.telefono) 
        print("EDAD: ",self.edad) 
        print("EMAIL: ",self.email)

class Empleado(Persona):
    def __init__(self,nombre, apellido,direccion, telefono, edad, email,NombreCargo, Salario, JefeInmediato,experiencia):
        super().__init__(nombre, apellido,direccion, telefono, edad, email)
        self.NombreCargo=NombreCargo
        self.Salario=Salario
        self.JefeInmediato=JefeInmediato
        self.experiencia=experiencia       

    def pedir_datos2(self):
        self.Salario=int(input("DIGITE SU SALARIO: "))
        self.JefeInmediato=input("DIGITE QUIEN ES SU JEFE INMEDIATO: ")
        self.experiencia=int(input("DIGITE CUANTOS AÑOS DE EXPERIENCIA TIENE: "))

    def mostrar_datos2(self):
        print("SALARIO: ",self.Salario)
        print("JEFE INMEDIATO: ",self.JefeInmediato)
        print("AÑOS DE EXPERIENCIA: ",self.experiencia)    

    def calcular_cargo(self):
        if(self.Salario>=5000000 and self.experiencia>=5 and self.edad>=25 and self.edad<=45):
            self.NombreCargo= ("CARGO SENIOR")
            print("CARGO: ",self.NombreCargo)
        elif(self.Salario>=900000 and self.Salario<=1200000 and self.experiencia>=1 and self.experiencia<=2 and self.edad>=18 and self.edad<=22):
            self.NombreCargo=("CARGO JUNIOR")
            print("CARGO: ",self.NombreCargo)
        else:
            self.NombreCargo = ("CARGO NO ESPECIFICADO")
            print("CARGO: ",self.NombreCargo)
    

x=Empleado("", "", "", 0, 0, "", "", 0, "", 0)

x.pedir_datos()
x.pedir_datos2()

print("\n ")
x.mostrar_datos()
x.mostrar_datos2()
x.calcular_cargo()