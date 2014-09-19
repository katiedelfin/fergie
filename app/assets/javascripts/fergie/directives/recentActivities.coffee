angular.module('fergie.directives').directive 'recentActivities', (LoggedActivity)->
  restrict: 'E'
  template: """
    <table>
      <thead>
        <tr>
          <th>Date</th>
          <th>Activity</th>
          <th>Duration</th>
          <th>Intensity</th>
          <th>Points</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr ng-repeat="activity in recentActivities">
          <td>{{activity.date}}</td>
          <td>{{activity.activity.name}}</td>
          <td>{{activity.duration}}</td>
          <td>{{activity.intensity}}</td>
          <td>{{activity.points}}</td>
          <td><a href="#" ng-click="delete(activity)">Delete</a></td>
        </tr>
      </tbody>
    </table>
  """
  
  link: (scope, element, attrs)->
    LoggedActivity.query().then (activities)->
      scope.recentActivities = activities

    scope.delete = (activity)->
      activity.delete().then ()->
        _.remove(scope.recentActivities, activity);

