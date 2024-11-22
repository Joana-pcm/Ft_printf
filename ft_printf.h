/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpatrici <jpatrici@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/07 11:04:22 by jpatrici          #+#    #+#             */
/*   Updated: 2024/11/07 14:11:55 by jpatrici         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"
# include <stdarg.h>
# include <unistd.h>
# include <stdio.h>

int		ft_printf(const char *s, ...);
int		ft_printnum(int n);
int		ft_printstr(char *s);
int		ft_printchr(char c);
int		ft_printptr(unsigned long long n);
int		ft_printhex(unsigned int n, int bi);
int		ft_printunint(unsigned int n);

#endif
