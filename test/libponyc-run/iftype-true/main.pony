use @pony_exitcode[None](code: I32)

trait T
class C is T

actor Main
  new create(env: Env) =>
    foo[C](C)

  fun foo[A: T](x: A) =>
    iftype A <: C then
      @pony_exitcode(1)
    end
