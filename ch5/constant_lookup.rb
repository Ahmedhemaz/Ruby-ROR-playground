module M
  class C
    X = 2
    class D
      module N
        X = 1 # diff id from the C::X 'Not the same constant'
      end
    end
  end
end
puts M::C::D::N::X
puts M::C::X
