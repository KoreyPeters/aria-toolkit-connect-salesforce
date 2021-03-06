/** Copyright 2018 Aria Solutions Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

@isTest
private class ACT_NamespaceControllerTest {

  @isTest static void testNamespaceClassPrefix() {
    System.assertEquals(
      ACT_NamespaceControllerTest.class.getName().substringBefore('ACT_NamespaceControllerTest'),
      new ACT_NamespaceController().getNamespaceClassPrefix()
    );
  }

  @isTest static void testNamespacePagePrefix() {
    System.assertEquals(
      ACT_NamespaceControllerTest.class.getName().substringBefore('ACT_NamespaceControllerTest').replace('.', '__'),
      new ACT_NamespaceController().getNamespacePagePrefix()
    );
  }
}