# carwow front end tech test

### Installation & Getting Started

To run this project set up rails on your machine, you can find a guide [here.](http://guides.railsgirls.com/install)

Then once you have cloned this project you can navigate into the directory and run:

`$ bundle install`

If all has gone to plan, you should be able to start the server running:

`$ bundle exec puma`

From the browser you should be able to access the site on `http://localhost:3000` or click [here.](http://localhost:3000)

### Development Process

I had a lot of fun with this exercise. Coming from more of a back end background I saw it as an excellent opportunity to absorb some new approaches and technologies.

#### Technologies

##### Mockup Software

Working from the designs provided in `app.zeplin.io` were extremely helpful - and this is a tool I will certainly be using going forwards. Excellent grid-based reference lines, and selectable areas complete with measurements and colour codes were very helpful indeed.

##### Flexbox

This was the first time I'd used Flexbox, and I'm amazed at how much this feature offers for layout. I'd thoroughly recommend [Dave Geddes' "Flexbox Zombies"](http://geddski.teachable.com/p/flexbox-zombies) to anyone interested in learning more about this subject.

##### Sass

This was my first real opportunity to beyond the very basics of CSS preprocessors, and I relished to make stylesheet editing feel more like programming. I realise there are some pretty huge gains one can make on a large codebase when using Sass in a project.

##### BEM

I enjoyed the opportunity to make use of the BEM syntax. I can see how on a large project this would be a real life-saver in terms of organisation and readability.

#### Process

As I worked through this exercise I was more interested in progress and wanted to habits formed from TDD to make things work, then revisit them to look for best practices. As a result, you will see the word _'refactor'_ in many of the commit messages.

During the process I concentrated on testing the app in the three browsers stipulated in the [original challenge:*](https://gist.github.com/akash/01bbe14fee7cd871b97010faa55c3c97)

* Chrome
* Safari
* Internet Explorer 10 (via a virtual machine)

(* Although not requested, the site has also been tested in Firefox)

IE10 certainly provided some challenges, and there was a plugin for my editor (Atom) that was a life-saver in terms of referencing vendor prefixes for the flexbox declarations.

#### Challenges

##### Working Alone

As with all Development projects, not having access to the team makes things much harder - to be able to have a quick chat with the Designer to get clarity on layout expecations at certain breakpoints, or discuss with another Developer ways to organize mixins would certainly have made the project even more enjoyable. I think front end development is perhaps even more collaborative in nature than back end, in the average company.

##### IE10

Supporting older browsers always adds extra layers of complexity - especially when trying to use a more recent feature of CSS such as Flexbox.

One frustrating point with the IE experience was trying to apply the flexbox vertical centering, which in this screenshot is refusing to align to the image of a car:

![IE positioning blues](/screenshots/IE10-positioning.png)

My intention to fix this was to use conditional comments to target IE10 specifically for this case, and position the card make and model manually. However, IE10 does not provide conditional comments! There is a workaround listed [in this article](https://css-tricks.com/ie-10-specific-styles/) but honestly I ran out of time and decided to take the visual compromise of having the text aligned a little lower. It would certainly be fixed in the next iteration though.

##### SVG Bug

This was probably the most frustrating bug of all! I found an issue with the 'delete' button icon where sometimes the image would distort after being clicked, as you can see in this screenshot:

![Weird SVG rendering](/screenshots/svg-issue.png)

If you would like to re-create this issue locally, clone this repo, navigate to the main directory and run:

```
$ git checkout eeb504d8793f1bc4181b5581b
```

You will find that if you click on the 'delete' button of the first (top-left) card in the view, you should be able to see the distortion shown in the previous screenshot! (Once you're done `$ git checkout master` should bring you back to the most current version of the code.)

##### Flexbox Layouts

While Flexbox is certainly fantastic for positioning certain elements in modern browsers, it has its backwards-compatibility issues, and is still not ideal for all layout purposes. I found when attempting a pure flexbox layout for the cards, that it does not handle uneven final rows gracefully, so I had to revert to a more traditional floated-element implementation.

##### Mockup Adherence

As mentioned previously the mockups were provided in an excellent medium which made interpreting measurements much easier. However, as often happens when working in a silo, there are times where being able to chat with the Designer responsible allows the Developer to move ahead with more certainty. At one point I branched off to make a version which adhered much more literally to the design's measurements in terms of typography, which can be seen in this [pendantically-named branch.](https://github.com/roidriscoll/carwow/tree/mockup-accurate-fonts)

Ultimately I decided to go with my instinct and instead branch off and follow a strategy of introducing a consistent formula for line-heights which can be seen in the latest version of the code on master. I hope this does justice to the Designer's original vision.

### Conclusion

This was such a fun tech test, and I've certainly learnt a lot in completing it. Please feel free to clone this project, have a look around and give me a shout with any questions/comments. I **highly** value feedback, so all and any is greatly appreciated. Thanks to the carwow team for putting this together.

Cheers,

Roi
