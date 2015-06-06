chai = require "chai"
sinon = require "sinon"
chai.use require "sinon-chai"

expect = chai.expect

describe "googl", ->
    beforeEach ->
        @robot =
            respond: sinon.spy()

        require("../src/googl")(@robot)

    it "registers a respond listener", ->
        expect(@robot.respond).to.have.been.calledWith(/shorten (.+)/i)
