<drop-box ondrop={ drop } ondragover={ allowDrop }>
  <span>{ num }</span>

<script>
    var that = this;

    allowDrop(e) {
      e.preventDefault();
      // console.log('allowDrop():', e);
    }
    drop(e) {
      var dragNum = e.dataTransfer.getData("dragNumber");
      var dropNum = this.num;

      // console.log('drop():', dragNum, dropNum);

      if (dropNum == dragNum) {
        alert('MATCH');

        // The numbers match... so let's remove that number by removing it from the original array
        var targetNumber = dropNum;

        var dragIndex = this.parent.dragNumbers.indexOf(targetNumber)
                        this.parent.dragNumbers.splice(dragIndex, 1);
        var dropIndex = this.parent.dropNumbers.indexOf(targetNumber)
                        this.parent.dropNumbers.splice(dropIndex, 1);

        this.parent.update();

      } else {
        alert('WRONG');
      }
    }
  </script>

  <style>
    :scope {
      display: inline-block;
      width: 4em;
      height: 4em;
      background-color: gold;
      margin: 1em;
      line-height: 4em;
      text-align: center;
      vertical-align: middle;
    }
  </style>

</drop-box>
