
subroutine ReadFromFile(filename,oArray)
    implicit none
    character*11, intent(in) :: filename
    character*10, dimension(20), intent(out) :: oArray
    integer :: index = 1

    !initialize array
    do index = 1,20
        oArray(index) = "++++++++++"
    end do

    open(unit=10,file=filename)

    do index = 1,20
        read (10,*) oArray(index)
    end do
end subroutine
