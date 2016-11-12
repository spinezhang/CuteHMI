#ifndef CUTEHMI_QML_CUTEHMI_CHARTS_SRC_CHARTS_DATETIMEAXIS_HPP
#define CUTEHMI_QML_CUTEHMI_CHARTS_SRC_CHARTS_DATETIMEAXIS_HPP

#include "LabeledAxis.hpp"

namespace cutehmi {
namespace charts {

class DateTimeAxis:
		public LabeledAxis
{
	Q_OBJECT

	public:
		/**
		 * <principle id="cutehmi.charts.DateTimeAxis-orderedIntervalEnum">
		 * Enum values are stored from smallest to largest intervals and are guaranteed to be contiguous.
		 * </principle>
		 */
		enum interval_t {
			MILLISECONDS,
			SECONDS,
			MINUTES,
			HOURS,
			DAYS,
			WEEKS,
			MONTHS,
			YEARS
		};
		Q_ENUM(interval_t)

		Q_PROPERTY(interval_t tickInterval READ tickInterval WRITE setTickInterval NOTIFY tickIntervalChanged)
		Q_PROPERTY(interval_t minorTickInterval READ minorTickInterval WRITE setMinorTickInterval NOTIFY minorTickIntervalChanged)

		static constexpr interval_t INITIAL_TICK_INTERVAL = DAYS;
		static constexpr interval_t INITIAL_MINOR_TICK_INTERVAL = HOURS;

		DateTimeAxis(QQuickItem * parent = 0);

		interval_t tickInterval() const;

		void setTickInterval(interval_t interval);

		interval_t minorTickInterval() const;

		void setMinorTickInterval(interval_t interval);

		qreal mapToPlotArea(qreal value) const override;

	signals:
		void tickIntervalChanged();

		void minorTickIntervalChanged();

	protected:
		void walkTicks(std::function<void (qreal tick)> callback) const override;

		void walkMinorTicks(std::function<void (qreal tick)> callback) const override;

		void walkTickLabels(std::function<void (qreal labelPos)> callback) const override;

		QString tickToString(qreal tick) const override;

		QString boundToString(qreal tick) const override;

	private slots:
		void connectPlotArea(PlotArea * oldPlotArea);

		void recalcRatio();

		void connectOrientation();

	private:
		qreal tickMax() const;

		qreal approxTickIntervalToMSec(interval_t interval) const;

		QDateTime roundTick(qreal tick, interval_t tickInterval) const;

		void advanceTickDateTime(QDateTime & tickDT, interval_t tickInterval) const;

		interval_t m_tickInterval;
		interval_t m_minorTickInterval;
		qreal m_screenScaleRatio;
};

}
}

#endif