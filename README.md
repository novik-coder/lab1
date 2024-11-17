实验工作#1
GitHub课堂工作流程

持续集成和持续交付
措辞
作为第一个实验室工作的一部分，您需要编写一个简单的web应用程序，为用户提供对Person实体的一组操作。 对于此应用程序，在Render上自动执行构建，测试和发布过程。

应用程序必须实现API:

GET/persons/{PersonID}–关于一个人的信息;
获取/人员-所有人的信息;
POST/persons-创建关于一个人的新记录;
PATCH/persons/{PersonID}-更新一个人的现有记录;
删除/persons/{PersonID}-删除有关一个人的记录。
要求OpenAPI格式的API描述。

要求：
原始项目存储在Github上。 要构建，请仅使用Github Actions。
请求/响应必须是JSON格式。
如果按id记录未找到，则返回HTTP状态404未找到。
创建有关人员的新记录（POST/person方法）时，返回使用空正文和标头位置创建的HTTP状态201：/api/v1/persons/{PersonID}，其中PersonID是创建记录的id。
应用程序应该包含4-5个单元测试，用于实现的操作。
应用程序必须包装在Docker中。
使用GitHub操作部署到Render（代替Heroku），使用docker进行部署。 您不能使用Render 或webhook进行部署。
在建造中。yml将程序集，运行单元测试和部署的步骤添加到Render。
应用程序必须使用数据库来存储记录。
在Lab1.postman_environment.json 中将baseUrl值替换为Render上部署服务的地址。
解释
Kotlin/Spring上的应用程序示例。
对于本地开发，您可以在docker中使用Postgres，为此您需要运行docker compose up-d，具有Postgres13的容器将上升，persons数据库和program:test user将被创建。
成功部署到Render后，通过newman启动集成测试。 集成测试可以在本地检查，为此您需要往Postman导入lab1.postman_collection.json]）和environment [local] lab1.postman_environment.json。
Github Marketplace用于查找正确的构建工具。

所有测试成功完成后，Github教室中的仪表板上将标记成功的测试运行。
