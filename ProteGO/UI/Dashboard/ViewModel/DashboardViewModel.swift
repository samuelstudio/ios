import Foundation
import RxSwift

final class DashboardViewModel: DashboardViewModelType {

    private let disposeBag: DisposeBag = DisposeBag()

    private let model: DashboardModelType

    init(model: DashboardModelType) {
        self.model = model
    }

    func bind(view: DashboardView) {
        self.model.currentStatus.subscribe(onNext: { stauts in
            view.update(withStatus: stauts)
        }).disposed(by: self.disposeBag)
    }
}