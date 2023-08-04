# MVCDesignPattern-UIkit

This is something that many of us have consciously or unconsciously worked with.

So I’m just going to explain and note here basically.

About how things are working, just so that next time when I’m writing code I’m more deliberate and understand exactly what’s happening 

# What is MVC ?

---

![01](https://github.com/dodiforth/MVCDesignPattern-UIkit/assets/50798761/e693df45-8afe-4a6f-a469-e0ed55985224)


## M V C

- M(Model): “M” means model. Model we can think of as our data layer. So basically it gives us the structure of our data. For example, we have our user model and the user model has “firstName”, “lastName”, “email”, “phoneNumber”, etc. This is what normally the model is. In Swift(or in iOS) we’re able to create models using either a struct or a class.
- V(View): Just like the name implies, it’s what we can see on our device. We can see our text fields, buttons, and other whatever controls we have on our device’s screen.
- C(Controller): Finally, we have the controller. As the name implies again, it’s responsible for controlling things that are happening within our app. So it serves as sort of a middleman between the view and the model.
    
    So the View performs a particular triggers, events then the Controller listens to that and then it handles it depending on whether or not it needs data from the Model. 
    
    It goes to the Model retrieves that data and then updates the UI(View) if it needs just update the model then it gets some data from the UI and then goes to the Model and updates the Model. 
    
    Basically the Controller is in charge of just making sure that things are connected end to end.
    
    Below is the flow in action.
    
    ![02](https://github.com/dodiforth/MVCDesignPattern-UIkit/assets/50798761/ee6f65e0-3371-4bf0-8fc7-c12392f42876)

    
    User performs a particular action(like button click or type some texts in the field)
    
    Then the controller wants to listen to the event or the user action. And checks whether or not the action(like typing text in TextField) meets a particular criteria and if it does then just goes ahead and updates the view.
    
    ![03](https://github.com/dodiforth/MVCDesignPattern-UIkit/assets/50798761/7fefa5ad-4111-46b8-b36e-d8121100c811)

    
    Then alternatively if the user action requires some data from the Model then the Controller goes to the Model and updates the Model if it’s need to be updated, or if it needs just to retrieve it, then it gets the data from the Model. And the Controller is notified whenever it is done. And then the Controller just goes ahead and updates the View
    
    ![04](https://github.com/dodiforth/MVCDesignPattern-UIkit/assets/50798761/9f6cda86-5243-4586-a55f-2a6f12962e47)

    This is the general description of the flow throughout the entire MVC design pattern

  ## Reference
  - All images are from https://www.youtube.com/@EmmanuelOkwara
  - https://swimjiy.github.io/2019-05-28-web-mvc-mvp-mvvm
