subroutine x(xArray,oArray,eArray,oCounter,eCounter,n)
    implicit none
    integer, intent(out)::n
    integer, dimension(20), intent(in)::oArray
    integer, dimension(20), intent(in)::eArray
    integer, dimension(9), intent(out)::xArray
    integer::index = 1
    integer, intent(in)::oCounter
    integer, intent(in)::eCounter
    integer::index2 = 0

    integer, dimension(20)::tempO
    integer, dimension(20)::tempE

    do index = 1,20,1
        tempE(index) = -999
        tempO(index) = -999
    end do

    do index = 1,20,1
        if(oArray(index) /= -999) then
            tempO(index - oCounter) = oArray(index)
        end if
    end do

    do index = 1,20,1
        if(eArray(index) /= -999) then
            tempE(index - eCounter) = eArray(index)
        end if
    end do

    if(oCounter >= eCounter) then
        n = eCounter
    else
        n = oCounter
    end if
    do index = 1,n,1
        if(tempE(index) /= -999 .AND. tempE(n-index) /= -999 .AND. tempO(index) /= -999) then
            xArray(index) = (tempE(n-index) + tempO(index)) / tempE(index)
        endif
    end do
end subroutine
