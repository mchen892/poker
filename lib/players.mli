open Cards

type t
(** Abstract type representing a player and their cards *)

val get_name : t -> string
(** [get_name player] returns the name of [player]. *)

val get_card : t -> Cards.t * Cards.t
(** [get_card player] returns the cards of [player]. *)

val get_contributions : t -> int
(** [get_contributions players] returns the contributions of [player]. *)

val set_contributions : t -> int -> unit
(** [set_contributions player amount] sets the [player]'s contribution to be
    [amount] *)

val create_players_with_names : string list -> t list * Cards.t list
(** [create_players_with_names names] creates a list of players with the given
    [names], each player receiving two random cards, and returns the remaining
    card list *)
