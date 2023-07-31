class Person
    #Constructor de la clase con cuatro parámetros
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end

    def introduce
        puts "Hola, mi nombre es #{@first_name} #{@last_name}"
    end
    #Método vacío para implementar respuesta según corresponda
    def talk
        
    end
end
#Subclase Student que hereda de Person
class Student < Person
    def talk
        puts "Aquí es la clase de programación en Ruby?"
    end

    def introduce
        puts "Hola profesor. #{super}"
    end
end
#Subclase Teacher que hereda de Person
class Teacher < Person
    def talk
        puts "Bienvenido a la clase de programación en Ruby"
    end

    def introduce
        puts "Hola alumnos. #{super}"
    end
end
#Subclase Parent que hereda de Person
class Parent < Person
    def talk 
        puts "Aqui es la reunión de apoderados?"
    end

    def introduce
        puts "Hola, Soy uno de los apoderados. #{super}"
    end
end

#Crear instancias para cada subclase con sus cuatro parámetros
student = Student.new("Guillermo", "Mann", 17, "student")
teacher = Teacher.new("Evelyn", "Rojas", 38, "teacher")
parent = Parent.new("Pedro", "Fernández", 42, "parent")

#Para cada instancia se llama al método talk e introduce
student.talk
student.introduce

teacher.talk
teacher.introduce

parent.talk
parent.introduce