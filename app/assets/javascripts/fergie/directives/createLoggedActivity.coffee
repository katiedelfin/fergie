angular.module('fergie.directives').directive 'createLoggedActivity', (Activity, Intensity, LoggedActivity)->
  restrict: 'E'
  template: """
    <form accept-charset="UTF-8" class="new_logged_activity" id="new_logged_activity" ng-submit="create()">
      <div class="fieldset">
        <label for="logged_activity_Activity">Activity</label>
        <select id="logged_activity_activity_id" ng-model="loggedActivity.activity_id">
          <option value=""></option>
          <option ng-repeat="activity in activities" value="{{activity.id}}">{{activity.name}}</option>
        </select>
      </div>
      <div class="fieldset">
        <label for="logged_activity_Intensity">Intensity</label>
        <select id="logged_activity_intensity" ng-model="loggedActivity.intensity">
          <option value=""></option>
          <option ng-repeat="intensity in intensities" value="{{intensity}}">{{intensity | capitalize}}</option>
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
    Activity.query().then (activities)->
      scope.activities = activities;

    Intensity.query().then (intensities)->
      scope.intensities = intensities;

    scope.loggedActivity = new LoggedActivity()

    scope.create = ()->
      scope.loggedActivity.create().then (newLoggedActivity)->
        scope.loggedActivity = new LoggedActivity()

