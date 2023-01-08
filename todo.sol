// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TodoList{
    //create toDo pbj
    struct Todo{
        string text;
        bool completed;
    }

    //Todo arr
    Todo[] public todos;

    //Yeni Todo Oluşturuyoruz.
    function create(string calldata _text) external{
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }
    //Todo update
    function updateText(uint256 _index, string calldata _text) external{
        todos[_index].text = _text;
    }
    //Todo call
    function get(uint _index) external view returns(string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    
    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}