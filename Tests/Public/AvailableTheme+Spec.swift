import Quick
import Nimble

@testable import NatDS

final class AvailableThemeSpec: QuickSpec {
    override func spec() {
        describe("#init") {
            let systemUnderTest = AvailableTheme.self

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: AvonDarkTheme())

                expect(availableTheme).to(equal(.avonDark))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: AvonLightTheme())

                expect(availableTheme).to(equal(.avonLight))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: NaturaDarkTheme())

                expect(availableTheme).to(equal(.naturaDark))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: NaturaLightTheme())

                expect(availableTheme).to(equal(.naturaLight))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: TheBodyShopDarkTheme())

                expect(availableTheme).to(equal(.theBodyShopDark))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: TheBodyShopLightTheme())

                expect(availableTheme).to(equal(.theBodyShopLight))
            }

            it("initilizes with expected value") {
                let availableTheme = systemUnderTest.init(theme: StubThemeProtocol())

                expect(availableTheme).to(beNil())
            }
        }

        describe("#newInstance") {
            let systemUnderTest = AvailableTheme.self

            it("returns a new instance of expected type") {
                expect(systemUnderTest.avonDark.newInstance).to(beAnInstanceOf(AvonDarkTheme.self))
            }

            it("returns a new instance of expected type") {
                expect(systemUnderTest.avonLight.newInstance).to(beAnInstanceOf(AvonLightTheme.self))
            }

            it("returns a new instance of expected type") {
                expect(systemUnderTest.naturaDark.newInstance).to(beAnInstanceOf(NaturaDarkTheme.self))
            }

            it("returns a new instance of expected type") {
                expect(systemUnderTest.naturaLight.newInstance).to(beAnInstanceOf(NaturaLightTheme.self))
            }

            it("returns a new instance of expected type") {
                expect(systemUnderTest.theBodyShopDark.newInstance).to(beAnInstanceOf(TheBodyShopDarkTheme.self))
            }

            it("returns a new instance of expected type") {
                expect(systemUnderTest.theBodyShopLight.newInstance).to(beAnInstanceOf(TheBodyShopLightTheme.self))
            }
        }
    }
}
