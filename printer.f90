subroutine printer(oArray,eArray,xArray,eCounter,oCounter,n)
    implicit none
    integer, dimension(20), intent(in)::oArray
    integer, dimension(20), intent(in)::eArray
    integer, dimension(20), intent(in)::xArray
    integer, intent(in)::oCounter
    integer, intent(in)::eCounter
    integer, intent(in)::n
    integer::index = 1

    print*, eCounter, " numeros pares"
    do index = 1,20,1
        if(eArray(index) /= -999) then
            print*, eArray(index)
        endif
    end do
    print*, "--------------------------------------"
    print*, oCounter," numeros impares"
    do index = 1,20,1
        if(eArray(index) /= -999) then
            print*, oArray(index)
        endif
    end do
    print*, "--------------------------------------"
    print*, "x(i)= (Pares(n-i)+Impares(i))/Pares(i)"
    do index = 1,n,1
        print*, xArray(index)
    end do
end subroutine
