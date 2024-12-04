<?php

/*
 * This file is part of the Doctrine Behavioral Extensions package.
 * (c) Gediminas Morkevicius <gediminas.morkevicius@gmail.com> http://www.gediminasm.org
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Gedmo\SoftDeleteable\Traits;

/**
 * Trait for soft-deletable objects.
 *
 * This implementation does not provide any mapping configurations.
 *
 * @author Wesley van Opdorp <wesley.van.opdorp@freshheads.com>
 */
trait SoftDeleteable
{
    /**
     * @var \DateTime|null
     */
    protected $deletedAt;

    /**
     * Set or clear the deleted at timestamp.
     *
     * @return self
     */
    public function setDeletedAt(?\DateTime $deletedAt = null)
    {
        $this->deletedAt = $deletedAt;

        return $this;
    }

    /**
     * Get the deleted at timestamp value. Will return null if
     * the entity has not been soft deleted.
     *
     * @return \DateTime|null
     */
    public function getDeletedAt()
    {
        return $this->deletedAt;
    }

    /**
     * Check if the entity has been soft deleted.
     *
     * @return bool
     */
    public function isDeleted()
    {
        return null !== $this->deletedAt;
    }
}
