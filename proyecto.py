
import cx_Oracle

connection = cx_Oracle.connect("tryndamere", "1234", "localhost/orcl")
cursor = connection.cursor()

def op_index():
    cursor.execute("""select index_name, column_name, table_name
from user_ind_columns""")
    for ind, col, tab in cursor:
        print("Indice:", ind, "Columna:", col, "Tabla:", tab)
    input("Presione Enter para continuar")


def op_tab_ind():
    input("Presione Enter para continuar")

def op_constraint():
    cursor.execute("""select constraint_name, constraint_type, table_name 
from user_constraint""")
    for cons, ct, tab in cursor:
        print("Restriccion:", cons, "Tipo:", ct, "Tabla:", tab)
    input("Presione Enter para continuar")

def op_trigger():
    cursor.execute("""select trigger_name, trigger_type, status, table_name
from user_triggers""")
    for tname, trt, stat, tab in cursor:
        print("Trigger:", tname, "Tipo:", trt, "Status:", stat, "Tabla:", tab)
    input("Presione Enter para continuar")

def op_tam_col():
    cursor.execute("""select TABLE_NAME, COLUMN_NAME, DATA_LENGTH from user_tab_columns;""")
    for tname, tname, cname, tam in cursor:
        print("Tabla:", tname, "Columna:", cname, "Tamaño:", tam, "bytes")
    input("Presione Enter para continuar")

def op_tam_reg():
    input("Presione Enter para continuar")

def op_tam_tab():
    cursor.execute("""select table_name, blocks
from user_tables""")
    for tname, block in cursor:
        print("Tabla:", tname, "Tamaño:", block, "bloques")
    input("Presione Enter para continuar")

def op_procedures():
    cursor.execute("""select object_name 
from user_procedures
where object_type = 'PROCEDURE' """)
    for oname in cursor:
        print("Procedimiento:", oname )
        input("Presione Enter para continuar")

def op_tam_db():
    input("Presione Enter para continuar")

def op_block():
    input("Presione Enter para continuar")



print("hola mundo")
op = ""
while(op!="x"):
    print("""Seleccione:
    1. Listar el nombre de los índices, las columnas que indexa y la tabla indexada.
    2. Mostrar las tablas del esquema e indicar cuantos índices tiene asociada esa tabla.
    3. Indicar las restricciones del esquema, su tipo y la tabla a las que pertenecen.
    4. Listar el nombre, tipo, estatus y la tabla asociada de los triggers.
    5. Calcular el tamaño de cada columna en bytes.
    6. Calcular el tamaño de cada registro en bytes.
    7. Indicar el tamaño de las tablas en bloques.
    8. Listar los nombres de los procedimientos del esquema.
    9. Calcular el tamaño total de la base de datos en MB..
    0. Mostrar el Factor de bloqueo de las tablas e índices.
    x. Salir""")
    op=input("opcion?: ")
    if op=="1":
        op_index()
    elif op=="2":
        op_tab_ind()
    elif op=="3":
        op_constraint()
    elif op=="4":
        op_trigger()
    elif op=="5":
        op_tam_col()
    elif op=="6":
        op_tam_reg()
    elif op=="7":
        op_tam_tab()
    elif op=="8":
        op_procedures()
    elif op=="9":
        op_tam_db()
    elif op=="0":
        op_block()
    elif op=="x":
        connection.close()


 