# @details The node position on the y axis is given by pp$yy
# pp$yy also stores the positions of the tips
# the y coordinate of nodes start at pp$yy[ape::Ntip + 1]

#' Plot a Chronogram and Add Age Data to Corresponding Nodes
#' @description `plot_node_ages` plots a given chronogram and adds age
#'   data [points()] given in `node_ages` and `summary_ages` to the corresponding nodes.
#'
#' @param chronogram A `phylo` object with branch length proportional to time.
#' @param matched_ages An output of [datelife:::summary.matchedCalibrations()] with age data matched to nodes in `chronogram`.
#' @param pch_color A named vector or list of colors. Names must correspond to names
#'  in `matched_ages$in_phy$references`.
#'  If vector is not named and length > 1, colors will be recycled.
#' @param pch_transparency A numeric value ranging from 10-99, indicating
#' color transparency for color defined by `pch_color`. Default to `NULL`, no transparency.
#' @param pch_type A numeric vector or named list indicating the symbol for calibration age points.
#'   See [graphics::par()] for symbol options. Defaults to 20 = "bullet circle".
#' @param pch_cex A numeric value indicating **c**haracter **ex**pansion (i.e.,
#'  size scaling factor) of symbols defined by `pch`. Default to 1.
#' @param bars_color A character vector of one element indicating the color for
#'  node age distribution bars. Defaults to "#80808050", which is hex for gray
#' ("#808080") with 50\% transparency.
#' @param bars_lwd A numeric vector indicating the line width for age distribution bars.
#'   See [graphics::par()] for options. Default to 7.
#' @param add_legend Default to `TRUE`, adds a legend to the left of the plot.
#' @param legend_cex A numeric value indicating **c**haracter **ex**pansion (i.e.,
#'  size scaling factor) of legend. Default to one half the size of the axis label, `cex_axislabel * 0.5`.
#' @param legend_pt_cex A numeric value indicating **c**haracter **ex**pansion (i.e.,
#'  character size scaling factor) of legend points. Default to one half the size of the axis label, `cex_axislabel * 0.5`.
#' @param legend_x the x co-ordinate to be used to position the legend on the left side of the plot.
#' @param legend_y the y co-ordinate to be used to position the legend on the left side of the plot.
#' @param legend_box Default to `TRUE`, adds a box around the legend.
#' @param legend_pch A numeric vector indicating the symbol to use in legend.
#'   See [graphics::par()] for options. Defaults to 20 = "bullet circle".
#' @param legend_text A character vector indicating the text to use as legend.
#' @param legend_color A character vector indicating the colors to use in legend.
#' @param legend_title A character vector indicating the title to use in legend.
#' @inheritParams plot_phylo
#' @inheritDotParams ape::plot.phylo
#' @importFrom ape .PlotPhyloEnv
#' @details Plot area margin sizes, as defined by [graphics::par()$mai] and [graphics::par()$omi],
#' are overruled within the function. To modify them you have to use the arguments
#' `mai1`, `mai2`, `mai3` and `mai4`, and omi1, omi2, omi3 and omi4.
#' @export
plot_node_ages_2.3 <- function(chronogram,
                           matched_ages,
                           time_depth = NULL,
                           plot_type = "phyloch",
                           mai1, mai2, mai3, mai4,
                           omi1, omi2, omi3, omi4,
                           title = "Chronogram",
                           cex_title = graphics::par("cex"),
                           pos_title = 1,
                           cex_tiplabels = graphics::par("cex"),
                           geologic_timescale = "strat2012",
                           geologic_unit = "period",
                           pos_axis = 1,
                           cex_axis = graphics::par("cex"),
                           axis_label = "Time (MYA)",
                           center_axislabel = 0.5,
                           cex_axislabel = graphics::par("cex"),
                           pch_type = 20,
                           pch_color,
                           pch_transparency = NULL,
                           pch_cex = graphics::par("cex"),
                           bars_color = "#80808050",
                           bars_lwd = 7,
                           add_legend = TRUE,
                           legend_cex = cex_axislabel*0.5,
                           legend_pt_cex = cex_axislabel*0.5,
                           legend_x,
                           legend_y,
                           legend_box = TRUE,
                           legend_pch,
                           legend_text,
                           legend_color,
                           legend_title,
                           ...) {
  #
  if (missing(matched_ages)) {
    stop("argument 'matched_ages' is missing with no default.")
  }
  # get calibrations that are in_phy only
  # create a list of data.frames with info per node, one with congruified ages, another one with summary ages:
  # matched_ages <- small_all_ages
  # mai1 <- mai2 <- mai3 <- mai4 <- omi1 <- omi2 <- omi3 <- omi4 <- 0.5
  in_phy <- lapply(matched_ages, "[[", "in_phy")
  # obtain max x lim from calibration ages, chronogram and chronogram + root:
  phylo_length <- max(ape::branching.times(chronogram))
  max_ages <- unlist(lapply(in_phy, function(x) x[,"MaxAge"]))
  min_ages <- unlist(lapply(in_phy, function(x) x[,"MinAge"]))
  max_calibration  <- max(c(max_ages, min_ages))
  if (is.null(time_depth)) {
    if (is.null(chronogram$root.edge)) {
      time_depth <- round(max(phylo_length, max_calibration) * 1.2, digits = -1)
    } else {
      time_depth <- round(max(phylo_length + chronogram$root.edge, max_calibration), digits = -1)
    }
  }
  ############################################################################
  # start chunk that can be replaced by plot_chronogram
  # mai4 <- 1
  datelifeplot::plot_chronogram(chronogram,
                  title = title,
                  time_depth = time_depth,
                  plot_type = "phyloch",
                  time_axis = TRUE,
                  mai1 = mai1, mai2 = mai2, mai3 = mai3, mai4 = mai4,
                  omi1 = omi1, omi2 = omi2, omi3 = omi3, omi4 = omi4,
                  plot_height = 30, plot_width = 20,
                  geologic_timescale = "strat2012",
                  geologic_unit = "period",
                  cex_tiplabels = cex_tiplabels, # inherits param from plot_node_ages
                  cex_axislabel = cex_axislabel,
                  cex_axis = cex_axis,
                  cex_title = cex_title,
                  pos_title = pos_title,
                  pos_axis = pos_axis,
                  center_axislabel = 0.5,
                  axis_label = axis_label,
                  ...)

  lastPP <- get("last_plot.phylo", envir = .PlotPhyloEnv)

  ############################################################################
  ############################################################################
  # plot gray bars
  ############################################################################
  ############################################################################
  # sometimes, nodes have only one age point, or ages that do not go over the node
  # to have gray bars connected to the nodes, we have to include their age in the range
  # first, get chronogram node ages :
  branching_times <- ape::branching.times(chronogram)
  if (is.null(names(branching_times))) {
    stop("nodes in chronogram need to be named.")
  } else {
    if (length(names(branching_times)) > 12) {
      nn <- paste0(paste(head(names(branching_times)), collapse = ", "),
            ", ..., ", paste(tail(names(branching_times)), collapse = ", "))
    } else {
      nn <- paste(names(branching_times), collapse = ", ")
    }
    message("'chronogram' node names used to extract node numbers are \n",
            nn)
  }
  chronogram_node_numbers <- as.numeric(sub("n", "", names(branching_times)))
  # create a chronogram node ages data frame to combine:
  times_data_frame <- data.frame(MRCA = names(branching_times),
                                 MaxAge = as.numeric(branching_times),
                                 MinAge = as.numeric(branching_times),
                                 taxonA = rep("taxonA", length(branching_times)),
                                 taxonB = rep("taxonB", length(branching_times)),
                                 reference = rep("chronogram", length(branching_times)),
                                 mrca_node_number = chronogram_node_numbers,
                                 mrca_node_name = names(branching_times),
                                 nodeAge = as.numeric(branching_times))
  below_ntip <- times_data_frame$mrca_node_number <= lastPP$Ntip
  if (any(below_ntip)) {
    fixed <- times_data_frame$mrca_node_number[below_ntip] +  lastPP$Ntip
    times_data_frame$mrca_node_number[below_ntip] <- fixed
  }
  ############################################################################
  ## combine the data.frames into a single one:
  # dplyr::bind_rows only works for class data.frame, so convert ages to data.frame:
  for (i in seq(in_phy)) {
    class(in_phy[[i]]) <- "data.frame"
  }
  # Combine calibrations, summary ages, and branching times into a single data frame:
  combined <- dplyr::bind_rows(c(in_phy, list(times_data_frame)))
  ############################################################################
  # homogenize node numbers to be Ntip + 1
  below_ntip <- combined$mrca_node_number <= lastPP$Ntip
  if (any(below_ntip)) {
    fixed <- combined$mrca_node_number[below_ntip] + lastPP$Ntip
    combined$mrca_node_number[below_ntip] <- fixed
  }
  below_ntip <- in_phy[[2]]$mrca_node_number <= lastPP$Ntip
  if (any(below_ntip)) {
    fixed <- in_phy[[2]]$mrca_node_number[below_ntip] +  lastPP$Ntip
    in_phy[[2]]$mrca_node_number[below_ntip] <- fixed
  }
  ############################################################################
  # ape::nodelabels(bg = "#F8F8FF80", frame = "circle", cex = 0.5)
  ############################################################################
  # plot the gray bars using data from all congruified age data points:
  mrca_node_numbers <- unique(in_phy[[1]]$mrca_node_number)
  message(paste("Plotting confidence intervals for",
                length(mrca_node_numbers),
                "nodes with congruified age data."))
  mismatches <- c()
  # i = 7
  if(is.null(in_phy[[1]]$nodeAge)) {
    stop("nodeAge column is missing in argument `matched_ages[[1]]$in_phy")
  }
  for (i in mrca_node_numbers) {
    print(i)
    rowsies1 <- in_phy[[1]]$mrca_node_number == i
    youngest_age <- max(lastPP$xx) - min(in_phy[[1]]$nodeAge[rowsies1])
    oldest_age <- max(lastPP$xx) - max(in_phy[[1]]$nodeAge[rowsies1])
    # we just need one element for y position of nodes y 0 = y1 = lastPP$yy[i]
    graphics::segments(x0 = oldest_age,
             y0 = lastPP$yy[i],
             x1 = youngest_age,
             y1 = lastPP$yy[i],
             col = bars_color,
             lty = "solid",
             lwd = bars_lwd)
    # plot lines connecting to nodes:
    rowsies <- times_data_frame$mrca_node_number == i
    # node age is smaller than min calibration age:
    node_age <- max(lastPP$xx) - times_data_frame$nodeAge[rowsies]
    younger <-  round(node_age, digits = 2) > round(youngest_age, digits = 2)
    # node age is larger than max calibration age:
    older <- round(node_age, digits = 2) < round(oldest_age, digits = 2)
    if (younger) {
      mismatches <- c(mismatches, i)
      graphics::segments(x0 = node_age,
              y0 = lastPP$yy[i],
              x1 = youngest_age,
              y1 = lastPP$yy[i],
              col = bars_color,
              lty = "solid",
              lwd = bars_lwd/3)
    }
    if (older) {
      mismatches <- c(mismatches, i)
      graphics::segments(x0 = node_age,
              y0 = lastPP$yy[i],
              x1 = oldest_age,
              y1 = lastPP$yy[i],
              col = bars_color,
              lty = "solid",
              lwd = bars_lwd)
    }
  }
  message(paste(length(mismatches),
                "nodes with ages older or younger than their corresponding source age data points."))
  ############################################################################
  ############################################################################
  # plot points
  ############################################################################
  ############################################################################
  legend_color_in <- legend_pch_in <- pch_color_in <- vector(mode = "list")
  # data_set <- "a2"
  for (data_set in names(in_phy)) {
    ############################################################################
    # we use lastPP$xx positions to get plot x position for node ages
    # We need the one max x position in lastPP$xx with max(lastPP$xx)
    x_ages <- max(lastPP$xx) - in_phy[[data_set]]$nodeAge
    ############################################################################
    # Next, we use lastPP$yy positions to get plotting y position of nodes
    if (all(in_phy[[data_set]]$mrca_node_number > lastPP$Ntip)) {
      # case in which mrca_node_numbers start at Nt <- p + 1
      # we can directly use mrca_node_numbers as index for lastPP$yy
      # it generates a vector of the correct length
      y_ages <- lastPP$yy[in_phy[[data_set]]$mrca_node_number]
    } else {
      # case in which mrca_node_numbers start at 1
      nn <- in_phy[[data_set]]$mrca_node_number + lastPP$Ntip
      y_ages <- lastPP$yy[nn]
    }
    # length(y_ages)
    ############################################################################
    # Use study references to get vector of color points
    if (missing(pch_color)) {
      # this chooses colors at random
      color_pch_all <- in_phy[[data_set]]$reference
    } else {
      # choose colors from pch_color, by matching data_set names:
      if (is.null(names(pch_color[[data_set]]))) {
        warning("Argument pch_color$", data_set, "has no names, plotting of points will fail.")
      }
      study_names <- as.character(in_phy[[data_set]]$reference)
      mm <- study_names %in% names(pch_color[[data_set]])
      if (sum(mm) == 0) {
        stop("Something is wrong with pch_color study names. Do they match node_ages data sets??")
      } else if (sum(mm) != length(study_names)) {
        warning("Some study references in data set are not in pch_color")
      }
      color_pch_all <- pch_color[[data_set]][study_names]
    }
    ############################################################################
    # Use study references to get vector point types (pch_type)
    if (missing(pch_type)) {
      pch_type_all <- 20
    } else {
      print(pch_type[[data_set]])
      pch_type_all <- pch_type[[data_set]]
    }
    if (length(pch_type_all) > 1) {
      # choose point types from pch_type, by matching data_set names:
      mm <- match(as.character(in_phy[[data_set]]$reference), names(pch_type[[data_set]]))
      if (!is.numeric(mm)) {
        stop("Something is wrong with pch_type argument names. Do they match node_ages data sets?? Is it a list?")
      }
      pch_type_all <- pch_type[[data_set]][mm]
    }
    ############################################################################
    # Use study references to get vector of point cex (pch_cex)
    if (inherits(pch_cex, "list")) {
      pch_cex_all <- pch_cex[[data_set]]
      if (length(pch_cex_all) > 1) {
        # choose point types from pch_type, by matching data_set names:
        mm <- match(as.character(in_phy[[data_set]]$reference), names(pch_cex[[data_set]]))
        if (!is.numeric(mm)) {
          stop("Something is wrong with pch_type argument names. Do they match node_ages data sets?? Is it a list?")
        }
        pch_cex_all <- pch_cex[[data_set]][mm]
      }
    } else {
      pch_cex_all <- pch_cex
    }
    ############################################################################
    # assign transparency
    if (!is.null(pch_transparency)) {
      color_pch_all <- gplots::col2hex(color_pch_all)
      color_pch_all <- paste0(color_pch_all, pch_transparency)
    }
    # pch_color_in <- c(pch_color_in, list(color_pch_all))
    ss <- unique(names(color_pch_all))[order(unique(names(color_pch_all)))]
    legend_color_in <- c(legend_color_in, list(pch_color[[data_set]][ss]))
    ############################################################################
    # plot points from in_phy ages
    graphics::points(x_ages,
           y_ages,
           col = color_pch_all,
           pch = pch_type_all,
           cex = pch_cex_all)
   ############################################################################
   # get pch symbols for legend:
   xx <- rep(pch_type[[data_set]], length(pch_type[[data_set]]))
   legend_pch_in <- c(legend_pch_in, list(xx))
  }
  ############################################################################
  ############################################################################
  # add a title to the plot
  ############################################################################
  ############################################################################
  if (!is.null(title)) {
    titlew <- wrap_string_to_plot(string = title, max_cex = cex_title, whole = FALSE)
    graphics::mtext(text = titlew$wrapped,
                    outer = TRUE,
                    cex = titlew$string_cex,
                    font = titlew$string_font,
                    line = pos_title)
  }
  ############################################################################
  ############################################################################
  # add a legend
  ############################################################################
  ############################################################################
  if (any(add_legend)) {
    if (missing(legend_title)) {
      legend_title <- paste("Data set", seq(matched_ages))
    }
    if (missing(legend_x)) {
      legend_x <- -time_depth * 0.5
    }
    if (missing(legend_y)) {
      legend_y <- max(y_ages)
    }
    if (length(legend_x) != length(matched_ages)) {
      legend_x <- rep(legend_x, length(matched_ages))
    }
    if (length(legend_y) != length(matched_ages)) {
      legend_y <- rep(legend_y, length(matched_ages))
    }
    if (missing(legend_cex)) {
      legend_cex <- cex_axislabel * 0.5
    }
    if (length(legend_cex) != length(matched_ages)) {
      legend_cex <- rep(legend_cex, length(matched_ages))
    }
    if (length(legend_box) != length(matched_ages)) {
      legend_box <- rep(legend_box, length(matched_ages))
    }
    ############################################################################
    # add a legend for each data set in matched_ages
    ############################################################################
    for (i in seq(matched_ages)) {
      # determine text for legend:
      if (missing(legend_text)) {
        legend_text_i <- names(legend_color_in[[i]])
        if (length(legend_text_i) == 0) {
          message("There is no text for legend.\n",
          "You can provide one in the 'legend_text' argument or as names in 'pch_color' argument.")
          warning("Legend was not added.")
          break()
        }
      } else {
        legend_text_i <- legend_text[[i]]
      }
      if (inherits(legend_text_i, "list")) {
        legend_text_i <- unlist(legend_text_i)
      }
      # determine legend cex:
      legend_cex_i <- legend_cex[i]
      if (!inherits(legend_pt_cex, "list")) {
        legend_pt_cex <- rep(list(legend_pt_cex), 2)
      }
      legend_pt_cex_i <- legend_pt_cex[[i]]
      # determine legend pch:
      legend_pch_i <- unlist(ifelse(missing(legend_pch),
                             legend_pch_in[i],
                             legend_pch[i]))
      # determine legend color:
      legend_color_i <- unlist(ifelse(missing(legend_color),
                               legend_color_in[i],
                               legend_color[i]))
      # determine x and y position of legend:
      legend_x_i <- legend_x[i]
      legend_y_i <- legend_y[i]
      # legend box
      legend_box_i <- ifelse(legend_box[i], "o", "n")
      # legend title
      legend_title_i <- legend_title[i]
      # using NULL for "yes" argument of ifelse() errored as follows:
      # Error in ans[ypos] <- rep(yes, length.out = len)[ypos] :
      #   replacement has length zero
      # In addition: Warning message:
      # In rep(yes, length.out = len) : 'x' is NULL so the result will be NULL
      # determine xpd par() so legend is not hidden. We have two cases:
      if (legend_x_i <= 0) { ## if legend goes in the left margin
        graphics::par(xpd = TRUE) # xpd = TRUE clips the left margin
      }
      if (legend_y_i > max(y_ages)) { ## if legend goes in the upper margin
        graphics::par(xpd = NA) # xpd = NA clips the upper margin
      }
      message("legend ", i, " x co-ordinate is set to ", legend_x_i)
      message("And ", i, " y co-ordinate is set to ", legend_y_i)
      # plot actual legend:
      graphics::legend(x = legend_x_i,
             y = legend_y_i,
             legend = legend_text_i,
             pch = legend_pch_i,
             col = legend_color_i,
             cex = legend_cex_i,
             pt.cex = legend_pt_cex_i,
             bty = legend_box_i,
             title = legend_title_i)
    }
  }
}
