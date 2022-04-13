package com.course.model.checkstring.algorithms;

import com.course.model.checkstring.CheckStringBase;

public class Levenshtein extends CheckStringBase {
	public Levenshtein() {}

	public static int max(int i, int j) {
		return (i > j ? i : j);
	}

	public static int min3(int i, int j, int k) {
		int result = i;
		if (j < result)
			result = j;
		if (k < result)
			result = k;
		return result;
	}

	private static int levDistance(String S, String T) {
		int i, j;
		final int n = S.length(), m = T.length();
		int L[][] = new int[n + 1][m + 1];
		for (i = 0; i < n + 1; i++) {
			for (j = 0; j < m + 1; j++) {
				if (i == 0 || j == 0) {
					L[i][j] = max(i, j);
				} else {
					L[i][j] = min3(L[i - 1][j] + 1, L[i][j - 1] + 1,
							L[i - 1][j - 1] + (S.charAt(i - 1) != T.charAt(j - 1) ? 1 : 0));
				}
			}
		}
		for (i = 0; i < n + 1; i++) {
			for (j = 0; j < m + 1; j++) {
				// System.out.print(L[i][j]);
			}
			// System.out.println();
		}
		return L[n][m]; // Max lunghezza stringa (peggiore)
	}

	@Override
	protected int internalCheck(String input, String standard) {
		int dist = levDistance(input,standard);
		if(input != standard && dist == 0) {
			return -1;
		} else {
			return dist;
		}
		
	}

}