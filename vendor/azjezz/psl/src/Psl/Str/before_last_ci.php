<?php

declare(strict_types=1);

namespace Psl\Str;

/**
 * @throws Exception\OutOfBoundsException If the $offset is out-of-bounds.
 *
 * @pure
 */
function before_last_ci(string $haystack, string $needle, int $offset = 0, Encoding $encoding = Encoding::UTF_8): ?string
{
    $length = search_last_ci($haystack, $needle, $offset, $encoding);
    if (null === $length) {
        return null;
    }

    return slice($haystack, 0, $length, $encoding);
}
