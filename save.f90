subroutine SaveToFile(filename,xArray,evenCounter,oddCounter,n)
    implicit none
    character*14, intent(in) :: filename
    integer, intent(in)::oddCounter
    integer, intent(in)::evenCounter
    integer, intent(in)::n
    integer, dimension(n), intent(in)::xArray
    integer :: index = 1

    open(unit=10,file=filename)

    write(10,*) "Numeros Pares:"
    write(10,*) evenCounter
    write(10,*) "Numeros Impares:"
    write(10,*) oddCounter
    write(10,*) "X:"

    do index = 1,n,1
        write(10,*) xArray(index)
    end do
end subroutine
