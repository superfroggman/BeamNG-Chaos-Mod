angular.module("beamng.apps").directive("myApp", [
  "bngApi",
  function (bngApi) {
    return {
      template:
        '<div style="text-align:center; height:100%; width:100%;" class="bngApp">' +
        '<md-button flex style="margin: 2px; min-width: 122px" md-no-ink class="md-raised" ng-click="chaos()">Chaos!</md-button>' +
        "</div>",
      replace: true,
      restrict: "EA",
      require: "^bngApp",
      scope: true,
      link: function (scope, element, attrs) {
        scope.chaos = function () {
          bngApi.engineLua("extensions.geScript.printCool()");
        };
      },
    };
  },
]);
