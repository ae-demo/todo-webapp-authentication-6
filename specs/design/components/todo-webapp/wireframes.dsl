screen TodoList "The signed-in user's to-do items"
  navbar "Todo | Sign out"
  row
    heading "My To-Dos"
    right
    button "Add To-Do" primary -> NewTodo
  table "Title | Status | "
    row "Buy groceries | Open | "
    row "Finish report | Completed | "
  text "Click a to-do to edit it, or use the checkbox in the app to mark it complete."

screen NewTodo "Add a new to-do item"
  navbar "Todo | Sign out"
  card "New To-Do"
    input "Title"
    row
      right
      button "Cancel" -> TodoList
      button "Save" primary -> TodoList

screen EditTodo "Edit or delete a to-do item"
  navbar "Todo | Sign out"
  card "Edit To-Do"
    input "Title"
    toggle "Completed"
    row
      button "Delete" danger -> TodoList
      right
      button "Cancel" -> TodoList
      button "Save" primary -> TodoList

flow "Manage my to-dos"
  role "User"
  description "A signed-in user adds, views, completes, edits and deletes their own to-do items"
  TodoList
  NewTodo
  EditTodo
