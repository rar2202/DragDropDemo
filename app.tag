<app>
  <h1>RiotJS Drag and Drop</h1>
  <h3>Draggables</h3>
  <div>
    <drag-box each={ num in dragNumbers }></drag-box>
  </div>

  <h3>Droppables</h3>
  <div>
    <drop-box each={ num in dropNumbers }></drop-box>
  </div>

<script>
  var that = this;

  this.dragNumbers = shuffle([1,2,3,4,5]);
  this.dropNumbers = shuffle([1,2,3,4,5]);

</script>

  <style>
    :scope {
      font-family: Helvetica;
    }
  </style>
</app>
