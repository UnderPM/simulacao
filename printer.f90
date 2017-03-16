subroutine printer(eCounter,oCounter,rCounter)
    implicit none
    integer, intent(in)::oCounter
    integer, intent(in)::eCounter
    integer, intent(in)::rCounter

    print*, eCounter, " numeros pares"
    print*, "--------------------------------------"
    print*, oCounter," numeros impares"
    print*, "--------------------------------------"
    print*, rCounter," numeros nao inteiros"
    print*, "--------------------------------------"
    print*, "--------------------------------------"
    print*, "Resultados salvos em resultados.dat"
    print*, "--------------------------------------"
end subroutine
