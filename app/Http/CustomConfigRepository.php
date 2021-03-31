<?php

namespace App\Http;

use Alexusmai\LaravelFileManager\Services\ACLService\ACLRepository;
use Alexusmai\LaravelFileManager\Services\ConfigService\ConfigRepository;

/**
 * Class ConfigACLRepository
 *
 * Get rules from file-manager config file - aclRules
 *
 * @package Alexusmai\LaravelFileManager\Services\ACLService
 */
class CustomConfigRepository implements ConfigRepository
{


    public function getRoutePrefix(): string
    {
        // TODO: Implement getRoutePrefix() method.
    }

    public function getDiskList(): array
    {
        if (\Auth::id() === 1) {
            return [
                ['public', 'local', 's3'],
            ];
        }

        return ['public'];
    }

    public function getLeftDisk(): ?string
    {
        // TODO: Implement getLeftDisk() method.
    }

    public function getRightDisk(): ?string
    {
        // TODO: Implement getRightDisk() method.
    }

    public function getLeftPath(): ?string
    {
        // TODO: Implement getLeftPath() method.
    }

    public function getRightPath(): ?string
    {
        // TODO: Implement getRightPath() method.
    }

    public function getCache(): ?int
    {
        // TODO: Implement getCache() method.
    }

    public function getWindowsConfig(): int
    {
        // TODO: Implement getWindowsConfig() method.
    }

    public function getMaxUploadFileSize(): ?int
    {
        // TODO: Implement getMaxUploadFileSize() method.
    }

    public function getAllowFileTypes(): array
    {
        // TODO: Implement getAllowFileTypes() method.
    }

    public function getHiddenFiles(): bool
    {
        // TODO: Implement getHiddenFiles() method.
    }

    public function getMiddleware(): array
    {
        // TODO: Implement getMiddleware() method.
    }

    public function getAcl(): bool
    {
        // TODO: Implement getAcl() method.
    }

    public function getAclHideFromFM(): bool
    {
        // TODO: Implement getAclHideFromFM() method.
    }

    public function getAclStrategy(): string
    {
        // TODO: Implement getAclStrategy() method.
    }

    public function getAclRepository(): string
    {
        // TODO: Implement getAclRepository() method.
    }

    public function getAclRulesCache(): ?int
    {
        // TODO: Implement getAclRulesCache() method.
    }
}
