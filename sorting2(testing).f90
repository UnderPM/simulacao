subroutine Sorting_testing(iArray,oArray)
    implicit none
    integer, dimension(100), intent(in) :: iArray
    integer, dimension(100) :: iArrayCopy
    integer, dimension(100), intent(out) :: oArray
    integer :: a,b,minIndex
    integer :: aindex = 1
    integer :: index2 = 1

    !initialize iArrayCopy
    do aindex = 1,100
        iArrayCopy(aindex) = iArray(aindex)
    end do

    !initialize oArray
    do aindex = 1,100
        oArray(aindex) = -999
    end do


    minIndex = 1

    do aindex = 1,100
        a = iArrayCopy(aindex)
        if(a == -999) then
            goto 100
        end if
        do index2 = 1,100
            b = iArrayCopy(index2)
            if(b == -999) then
                goto 101
            end if
            if(b < a) then
                a = b
                minIndex = index2
            end if
            101 continue
        end do
        oArray(aindex) = iArrayCopy(minIndex)
        iArrayCopy(minIndex) = -999
        100 continue
    end do

end subroutine

