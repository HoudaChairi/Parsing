/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hchairi <hchairi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/18 12:35:19 by hchairi           #+#    #+#             */
/*   Updated: 2023/07/22 15:26:36 by hchairi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"

void	parsing(char **env)
{
	initial(env);
	while (1)
	{
		depart_seg();
		ft_readline();
		if (syntaxe_err())
		{
			g_all.status_val = 258;
			printf("syntaxe err\n");
			free(g_all.line);
			g_all_clear();
			continue ;
		}
		suite_parsing();
		g_all.h = 0;
	}
}

int	main(int ac, char **av, char **env)
{
	(void)ac;
	(void)av;
	parsing(env);
	return (0);
}
