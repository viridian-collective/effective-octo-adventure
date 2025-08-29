nix can run Example.lean, I cannot! swap it with Main.lean; 

The thing is!
to run lake commands I need to have `nix develop`, and so nix is priority decision!

I changed the Example to be a library, and Main to be an executable. Now I can't use nix run anymore!

