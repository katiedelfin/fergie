angular.module('fergie.directives').directive 'createLoggedActivity', (LoggedActivity)->
  restrict: 'E'
  template: """
    <form accept-charset="UTF-8" class="new_logged_activity" id="new_logged_activity" ng-submit="create()">
      <div class="fieldset">
        <label for="logged_activity_Activity">Activity</label>
        <select id="logged_activity_activity_id" ng-model="loggedActivity.activity_id">
          <option value=""></option>
          <option value="2">Running</option>
        </select>
      </div>
      <div class="fieldset">
        <label for="logged_activity_Intensity">Intensity</label>
        <select id="logged_activity_intensity" ng-model="loggedActivity.intensity">
          <option value=""></option>
          <option value="low">Low</option>
          <option value="medium">Medium</option>
          <option value="high">High</option>
        </select>
      </div>
      <div class="fieldset">
        <label for="logged_activity_Duration">Duration</label>
        <input id="logged_activity_duration" ng-model="loggedActivity.duration" type="text">
      </div>
      <div class="fieldset">
        <label for="logged_activity_Date">Date</label>
        <input id="logged_activity_date" ng-model="loggedActivity.date" type="date">
      </div>
      <div class="fieldset">
        <input name="commit" type="submit" value="Create Logged activity">
      </div>
    </form>
  """
  
  link: (scope, element, attrs)->
    console.log('HEY!');
    scope.loggedActivity = new LoggedActivity()

    scope.create = ()->
      scope.loggedActivity.create().then (newLoggedActivity)->
        scope.loggedActivity = new LoggedActivity()

