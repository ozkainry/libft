/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oztozdem <oztozdem@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/12 17:46:32 by oztozdem          #+#    #+#             */
/*   Updated: 2024/12/13 12:16:37 by oztozdem         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	nbr_len(long n)
{
	int	len;

	len = 0;
	if (n < 0)
	{
		n = n * -1;
		len++;
	}
	while (n >= 10)
	{
		n = n / 10;
		len++;
	}
	len++;
	return (len);
}

static char	*put_nbr_in_str(char *str, int i, long nb)
{
	str[i--] = '\0';
	if (nb == 0)
	{
		str[0] = 48;
		return (str);
	}
	if (nb < 0)
	{
		str[0] = '-';
		nb = nb * -1;
	}
	while (nb > 0)
	{
		str[i--] = 48 + (nb % 10);
		nb = nb / 10;
	}
	return (str);
}

char	*ft_itoa(int n)
{
	char	*str;
	long	nb;
	int		i;

	nb = n;
	i = nbr_len(nb);
	str = (char *)malloc(sizeof(char) * (i + 1));
	if (!str)
		return (NULL);
	str = put_nbr_in_str(str, i, nb);
	return (str);
}
