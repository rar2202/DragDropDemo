<drag-box draggable="true" ondragstart={ drag }>
  <span>{ num }</span>

  var that = this;

  drag(e) {
    e.dataTransfer.setData("dragNumber", this.num);
    // console.log(e);
  }

  <style>
    :scope {
      display: inline-block;
      width: 2em;
      height: 2em;
      background-color: dodgerblue;
      margin: 1em;
      line-height: 2em;
      text-align: center;
      vertical-align: middle;
      cursor: -webkit-grab; cursor:-moz-grab;
      user-select: none;
    }
    :scope:active {
      cursor: -webkit-grabbing; cursor:-moz-grabbing;
    }
  </style>
</drag-box>
